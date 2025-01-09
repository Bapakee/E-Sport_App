<?php
	error_reporting(E_ERROR | E_PARSE);
	$c = new mysqli("localhost", "native_160422104", "ubaya", "native_160422104");

	if($c->connect_errno) {
		$arr = array("result" => "ERROR", 
					 "message" => "Failed to Connect");
		echo json_encode($arr);
		die();
	}
	if(isset($_POST['username'])) {
		
		$photo = $_POST['photo'];
		$user = $_POST['username'];
		$role = $_POST['role'];
		$pass = $_POST['password'];	
		$fname = $_POST['fname'];
		$lname = $_POST['lname'];

		$sql = "INSERT INTO `memberData`(`photo`, `username`, `role`, `password`, `fname`, `lname`) VALUES (?,?,?,?,?,?)";
		$stmt = $c->prepare($sql);
		$stmt->bind_param("ssssss",$photo,$user,$role,$pass,$fname,$lname);
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
