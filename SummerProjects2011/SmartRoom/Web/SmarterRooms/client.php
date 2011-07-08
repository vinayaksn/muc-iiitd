<?php
	$host="192.168.4.67";
	$port=1234;
	$message="welcome\n";
	//$socket = stream_socket_client($host);
	$socket = fsockopen($host,$port,$errno,$errstr,$timeout=30); 
	//$socket = stream_socket_client(AF_INET, SOCK_STREAM, 0) or die("Could not create socket\n");
	//socket_connect($socket,$host,$port);
	//socket_read ($socket, 1024) or die("Could not read server response\n");
	//socket_write($socket, $message, strlen($message)) or die("Could not send data to server\n"); 
	//stream_socket_sendto($socket,$message);
	fputs($socket, $message); 
	$message=fgets($socket); 
	echo $message;
?>