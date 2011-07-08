<?php
	$file=fopen("datafile.txt","w");
	if($file)
	{
		fputs($file,$_POST['IP']);
		fputs($file,"done");
	}
?>