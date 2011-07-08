<?php
$pagenum = $_POST['pagenum'];
if($pagenum == '1')
{
?>



<div id="content2">
	<font style="font-family:Arial, Helvetica, sans-serif; font-size:30px; color:#DCDCFF; float:left; margin:17px 0px 0px 20px;">
		Home
	</font>
</div>



<?php
}
if($pagenum == '2')
{
?>



<div id="content2">
	<font style="font-family:Arial, Helvetica, sans-serif; font-size:30px; color:#DCDCFF; float:left; margin:17px 0px 0px 20px; width:100%;">
		Room status
	</font>
</div>
<div id="options" style="float:left; color:#DCDCFF; overflow:hidden; width:500px; padding:30px 100px 20px 50px;">
	<table style="">
		<th>STATUS</th> <th>OF APPLIANCES</th>
		<tr height="10px;"></tr>
		<tr>
		<td width="10px;"></td>
		<td>FAN</td>
		<td></td>
		<td><form name="setstate">
			on<input type="radio" name="state" id="state1"/>
			off<input type="radio" name="state" id="state2"/>
			Auto mode[ Sensor Driven]<input type="radio" name="state" id="state3"/>
			</form>
		</td>
		</tr>
		<tr height="10px;"></tr>
		<tr>
		<td width="10px;"></td>
		<td onclick="senddata(setstate.state1.checked,setstate.state2.checked,setstate.state3.checked);" style="cursor:pointer;">SUBMIT</td>
		<td></td>
		</tr>
	</table>
	<div id='status'>
	hi
	</div>
</div>



<?php
}
if($pagenum == '3')
{
$date2=date("Y-m-d H:i:s");
$date1=$date2;
$date1[12]=$date1[12]-1;
?>


<div id="content2">
	<font style="font-family:Arial, Helvetica, sans-serif; font-size:30px; color:#DCDCFF; float:left; margin:17px 0px 0px 20px; width:100%;">
		Control & Status log
	</font>
	
</div>
<div id="options" style="float:left; color:#DCDCFF; overflow:hidden; width:500px; padding:30px 100px 20px 50px;">
Most Recent data provided set range for other requirements......[please enter in said format]<br /><br />
<form name="range">
<?php
echo "<font style=\"float:left;\">Start:&nbsp;&nbsp;&nbsp;</font>";
echo "<input type=\"text\" value=\"".$date1."\" id=\"date1\" name=\"date1\" style=\"float:left;\"/>";
echo "<input type=\"text\" value=\"".$date2."\" id=\"date2\" name=\"date2\" style=\"float:right;\"/>";
echo "<font style=\"float:right\">End:&nbsp;&nbsp;&nbsp;</font>";
?>
<br /><br />
</form>
<div class="menutitle" onclick="getdata('3',range.date1.value,range.date2.value);">SET DATE&nbsp;&nbsp;&nbsp;&nbsp;<img src="button.png" style="margin:0;"/></div>
</div>
<div id="log" style="float:left; width:800px; height:600px; overflow:hidden">
<table border="1" style="margin:20px 0px 0px 30px;">
<tr>
<th style="width:100px;">MOTION</th>
<th style="width:100px;">PIR Output</th>
<th style="width:100px;">WINDOW</th>
<th style="width:100px;">DOOR</th>
<th style="width:100px;">TEMPERATURE</th>
<th style="width:100px;">LIGHT INTENSITY</th>
</tr>
<?php
$i=0;
$con = mysql_connect("localhost","admin","admin");
mysql_select_db("sensors_data", $con);
	$data = mysql_query("SELECT * FROM data_table WHERE Date BETWEEN \"".$date1."\" and \"".$date2."\"",$con);
if($_POST['set']=='1')
{
	$data = mysql_query("SELECT * FROM data_table WHERE Date BETWEEN \"".$_POST[date1]."\" and \"".$_POST[date2]."\"",$con);
}
while(($row = mysql_fetch_object($data)) && ($i<100))
  {
  $i++;
  echo "<tr>";
  echo "<td>" . $row->PIR . "</td>";
  echo "<td>" . $row->PIR_OUTPUT . "</td>";
  echo "<td>" . $row->REED_1 . "</td>";
  echo "<td>" . $row->REED_2 . "</td>";
  echo "<td>" . $row->LM35 . "</td>";
  echo "<td>" . $row->LDR . "</td>";
  echo "</tr>";
  }
  mysql_close($con);
?>
</table>
</div>


<?php
}
if($pagenum == '4')
{
?>


<div id="content2">
	<font style="font-family:Arial, Helvetica, sans-serif; font-size:30px; color:#DCDCFF; float:left; margin:17px 0px 0px 20px;">
		Plots
	</font>	
</div>
<!-- saved from url=(0013)about:internet -->
	<!-- amcharts script-->
	<!-- swf object (version 2.2) is used to detect if flash is installed and include swf in the page -->
	<script type="text/javascript" src="swfobject.js"></script>
	<!-- chart is placed in this div. if you have more than one chart on a page, give unique id for each div -->
	<div id="chartdiv" style="background-color:#000000;"></div>
	    <script type="text/javascript">
       	    var params = {
           	    bgcolor:"#FFFFFF"
              };

	    	var flashVars = {
	       		/* path: "../../amcharts/flash/",*/
	       		settings_file: "line_settings.xml", 
	        	data_file: "line_data.xml"
			};
    		swfobject.embedSWF("amline.swf", "chartdiv", "600", "400", "8.0.0", "expressInstall.swf", flashVars, params);
		</script>


<?php
}
?>