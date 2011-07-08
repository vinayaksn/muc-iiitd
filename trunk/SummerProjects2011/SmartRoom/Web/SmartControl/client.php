<?php
	$host="192.168.4.67";
	$port=1234;
	$message=$_POST['state'];
	$socket = fsockopen($host,$port,$errno,$errstr,$timeout=30); 
	fputs($socket, $message); 
	$message=fgets($socket);
	echo $message;
?>