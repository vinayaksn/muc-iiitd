<?php
$con=mysql_connect('localhost','admin','admin');
if(!$con)
{
	echo "failed";
}
mysql_select_db("sensors_data",$con);
if($_POST)
{
	$sql="INSERT INTO data_table (PIR, PIR_OUTPUT, REED_1, REED_2, LM35, LDR)
		VALUES ('$_POST[PIR]','$_POST[PIROUT]' ,'$_POST[REED1]', '$_POST[REED2]', '$_POST[LM]', '$_POST[LDR]')";
	if(!mysql_query($sql,$con))
	{
		echo $_POST[PIR];
		die('Error: ' . mysql_error());
	}
}
mysql_close($con);
?>