<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Plots</title>
<link rel="stylesheet" type="text/css" href="stylesheet.css"/>
</head>
<body>
	<div id="header">
		<div id=wrapper>
			<font style="font-family:Arial, Helvetica, sans-serif; font-size:30px; color:#FFFFFF; float:left; margin:17px 0px 0px 20px;">
			Smarter Rooms
			</font>
		</div>
	</div>

	<?php
		$file=fopen("data.xml","w");
		fputs($file,"<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		fputs($file,"<chart>\r\n");
		fputs($file,"<series>\r\n");

		$con = mysql_connect("localhost","admin","admin");
		mysql_select_db("sensors_data", $con);
		$data = mysql_query("SELECT * FROM data_table",$con);
		$i='0';
		while(($row = mysql_fetch_object($data)))
		  {
				fputs($file,"<value xid=\"");
				fputs($file,$i);
				fputs($file,"\">");
				fputs($file,$row->Date);
				fputs($file,"</value>\r\n");
				$i++;
		  }
		  fputs($file,"</series>\r\n");
		  fputs($file,"<graphs>\r\n");
		  fputs($file,"<graph gid=\"1\">\r\n");
		  $data = mysql_query("SELECT * FROM data_table",$con);
		$i='0';
		while(($row = mysql_fetch_object($data)))
		  {
				fputs($file,"<value xid=\"");
				fputs($file,$i);
				fputs($file,"\">");
				fputs($file,$row->LM35);
				fputs($file,"</value>\r\n");
				$i++;
		  }
		  fputs($file,"</graph>\r\n");
		  fputs($file,"</graphs>\r\n");
		  
		  fputs($file,"</chart>\r\n");
		  fclose($file);
		  mysql_close($con);
	?>
	<div id="wrapper" style="min-height:600px;">
	<!-- saved from url=(0013)about:internet -->
	<!-- amcharts script-->
	<!-- swf object (version 2.2) is used to detect if flash is installed and include swf in the page -->
	<script type="text/javascript" src="swfobject.js"></script>
	<!-- chart is placed in this div. if you have more than one chart on a page, give unique id for each div -->
	<div id="chartdiv" style="background-color:#6A7E97;"></div>
	    <script type="text/javascript">
       	    var params = {
           	    bgcolor:"#6A7E97"
              };

	    	var flashVars = {
	       		/* path: "../../amcharts/flash/",*/
	       		settings_file: "line_settings.xml", 
	        	data_file: "data.xml"
			};
    		swfobject.embedSWF("amline.swf", "chartdiv", "600", "400", "8.0.0", "expressInstall.swf", flashVars, params);
		</script>
	</div>
	<div id="footer">
	</div>
</body>
</html>
