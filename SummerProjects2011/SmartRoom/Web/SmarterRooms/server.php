<?php
$host = "192.168.1.177";
$port = 1234;

// don't timeout!
set_time_limit(0);

// create socket
$socket = socket_create(AF_INET, SOCK_STREAM, 0) or die("Could not create socket\n");
$result = socket_bind($socket, $host, $port) or die("Could not bind to socket\n");
echo "hi";
$result = socket_listen($socket, 3) or die("Could not set up socket listener\n");
echo "hi";
// accept incoming connections and spawn another socket to handle communication
while(true)
{
    $spawn = socket_accept($socket) or die("Could not accept incoming connection\n");

    $input = socket_read($spawn, 1024) or die("Could not read input\n");
    $input = trim($input);

    // reverse client input and send back
    $output = strrev($input) . "\n";
    //socket_write($spawn, $output, strlen ($output)) or die("Could not write output\n");
	echo $input;
    socket_close($spawn);
}
socket_close($socket);
?>