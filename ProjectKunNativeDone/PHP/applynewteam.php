<?php
	error_reporting(E_ERROR | E_PARSE);
	$c = new mysqli("localhost", "native_160422104", "ubaya", "native_160422104");

	if($c->connect_errno) {
		$arr = array("result" => "ERROR", 
					 "message" => "Failed to Connect");
		echo json_encode($arr);
		die();
	}
	if(isset($_POST['idmember'])) {
		$id =  $_POST['idmember'];
		$team = $_POST['idteam'];
		$desc = $_POST['description'];
		$sql = "INSERT INTO `join_proposal`(`idmember`, `idteam`, `description`, `status`) VALUES (?,?,?,'Waiting')";
		$stmt = $c->prepare($sql);
		$stmt->bind_param("iis", $id,$team,$desc);
		$stmt->execute();
		$arr = array("result" => "OK", 
					 "sql"	=> $sql,
					 "message" => "Register Success");
		echo json_encode($arr);
	} else {
		$arr = array("result" => "ERROR", "message" => "id is required");
		echo json_encode($arr);
	}
?>
