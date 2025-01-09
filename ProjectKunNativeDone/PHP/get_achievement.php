<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
error_reporting(E_ERROR | E_PARSE);
$c = new mysqli("localhost", "native_160422104", "ubaya", "native_160422104");
if($c->connect_errno) {
     echo json_encode(array('result' => 'ERROR', 'message' => 'Failed to connect DB'));
die(); 
}
$sql = "SELECT * FROM achievement";  
$result = $c->query($sql);
$array = array();
if ($result->num_rows > 0) {
  while ($obj = $result -> fetch_object()) {
      $array[] = $obj;
  }
  echo json_encode(array('result' => 'OK', 'data' => $array)); 
} else {
     echo json_encode(array('result'=> 'ERROR', 'message' => 'No data found'));
die(); 
}
