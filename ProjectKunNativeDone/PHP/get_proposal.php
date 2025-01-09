<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
error_reporting(E_ERROR | E_PARSE);

// Database connection
$c = new mysqli("localhost", "native_160422104", "ubaya", "native_160422104");

if ($c->connect_errno) {
    echo json_encode(array('result' => 'ERROR', 'message' => 'Failed to connect to the database'));
    die();
}

// Check if a specific filter is provided
$whereField = isset($_POST['field']) ? $_POST['field'] : null; // e.g., "id", "name", etc.
$whereValue = isset($_POST['value']) ? $_POST['value'] : null; // Value to filter on

$response = array();

if ($whereField && $whereValue) {
    // Ensure the field is a valid column to avoid SQL injection
    $allowedFields = ["id", "name", "type", "description"]; // Add your valid column names here
    if (!in_array($whereField, $allowedFields)) {
        echo json_encode(array('result' => 'ERROR', 'message' => 'Invalid field name'));
        die();
    }

    // Build the SQL query dynamically
    $sql = "SELECT * FROM proposal WHERE $whereField = ?";
    $stmt = $c->prepare($sql);
    if ($stmt) {
        $stmt->bind_param("s", $whereValue); // Use "s" for string binding (adjust for numeric if needed)
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_object()) {
                $response[] = $row;
            }
            echo json_encode(array('result' => 'OK', 'data' => $response));
        } else {
            echo json_encode(array('result' => 'ERROR', 'message' => 'No data found for the specified filter'));
        }

        $stmt->close();
    } else {
        echo json_encode(array('result' => 'ERROR', 'message' => 'Failed to prepare SQL statement'));
    }
} else {
    // Default behavior: Fetch all data if no filter is provided
    $sql = "SELECT * FROM proposal";
    $result = $c->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_object()) {
            $response[] = $row;
        }
        echo json_encode(array('result' => 'OK', 'data' => $response));
    } else {
        echo json_encode(array('result' => 'ERROR', 'message' => 'No data found'));
    }
}

// Close the database connection
$c->close();
?>
