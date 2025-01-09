<?php
    error_reporting(E_ERROR | E_PARSE);
    $c = new mysqli("localhost", "native_160422104", "ubaya", "native_160422104");

    if ($c->connect_errno) {
        $arr = array(
            "result" => "ERROR",
            "message" => "Failed to Connect"
        );
        echo json_encode($arr);
        die();
    }

    if (isset($_POST['game'])) {
        $game = $_POST['game'];
        $sql = "SELECT t.* FROM `team` AS t RIGHT JOIN gameData AS gd ON gd.id = t.id WHERE gd.nama = ?;";
        $stmt = $c->prepare($sql);
        if ($stmt === false) {
            $arr = array(
                "result" => "ERROR",
                "message" => "Failed to prepare statement"
            );
            echo json_encode($arr);
            die();
        }

        // Use "s" for string binding
        $stmt->bind_param("s", $game);
        $stmt->execute();
        $result = $stmt->get_result();

        // Fetch rows
        $teams = array();
        while ($row = $result->fetch_assoc()) {
            $teams[] = $row;
        }

        $arr = array(
            "result" => "OK",
            "data" => $teams
        );
        echo json_encode($arr);
    } else {
        $arr = array(
            "result" => "ERROR",
            "message" => "'game' parameter is required"
        );
        echo json_encode($arr);
    }
?>
