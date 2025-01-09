<?php
	error_reporting(E_ERROR | E_PARSE);
	$c = new mysqli("localhost", "native_160422104", "ubaya", "native_160422104");

	if($c->connect_errno) {
		$arr = array("result" => "ERROR", 
					 "message" => "Failed to Connect");
		echo json_encode($arr);
		die();
	}
	if (isset($_POST['user']) && isset($_POST['pass'])) {
    $user = $_POST['user'];
    $pass = $_POST['pass'];

    // Prepare SQL statement
    $sql = "SELECT * FROM `memberData` WHERE username = ? AND password = ?";
    $stmt = $c->prepare($sql);

    if ($stmt) {
        $stmt->bind_param("ss", $user, $pass);
        $stmt->execute();

        // Fetch results
        $result = $stmt->get_result();
        $array = array();

        if ($result->num_rows > 0) {
            while ($obj = $result->fetch_object()) {
                $array[] = $obj;
            }
            echo json_encode(array('result' => 'OK', 'data' => $array));
        } else {
            echo json_encode(array("result" => "ERROR", "message" => "Invalid username or password"));
        }
        $stmt->close();
    } else {
        echo json_encode(array("result" => "ERROR", "message" => "Failed to prepare SQL statement"));
    }
} else {
    echo json_encode(array("result" => "ERROR", "message" => "Username and password are required"));
}
?>
