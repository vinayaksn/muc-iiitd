<?php
$pagenum = $_POST['pagenum'];
if($pagenum == '1')
{
?>



<div id="content2">
	<font style="font-family:Arial, Helvetica, sans-serif; font-size:30px; color:#DCDCFF; float:left; margin:17px 0px 0px 20px;">
		
		Smarter room
	<font style="font-family:Arial, Helvetica, sans-serif; font-size:15px; color:#DCDCFF; float:left; margin:17px 0px 0px 20px;">
		<p>An integrated system of all sensors used in Embedded system projects to make a room smarter by having centralized (automated)control over all appliances in the room.
		Currently motion, temperature, and window/door status detecting sensors have been installed.</p>
		
		

		<p>Supervisors:  Amarjeet Singh & Pushpendra Singh & Vinayak Naik</p>
		<p>Interns: Keshav Agarwal(NIT,Rourkela),Pranav Sahay(NSIT),Arjun Ahuja (IIIT-D),Maninder Singh (IP university)</p> 
		<p>Mentor: Pandarasamy Arjunan (PhD student, IIIT-D)</p>
		<p> The Block Diagram of the circuit is as below : </p> 
	<img src="wire connections.png" style="margin:0;"/>
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
		<td><form name="setstate" >
			on<input type="radio" name="state" id="state1"/>
			off<input type="radio" name="state" id="state2"/>
			Auto mode[ Sensor Driven]<input type="radio" name="state" id="state3"/>
			
			
			Time(in 3digits in sec) :<input type="text" name="time" id="p"/>
			</tr>
		</form>
		</td>
		<tr height="10px;"></tr>
		<tr>
		<td width="10px;"></td>
		
		 <td onclick="senddata(setstate.state1.checked,setstate.state2.checked,setstate.state3.checked,setstate.p.value);" style="cursor:pointer;"> SUBMIT		
		 
		 <!--
		<input type=button value="Submit" onclick="senddata(setstate.state1.checked,setstate.state2.checked,setstate.state3.checked,setstate.p.value);">
		-->
		</td>
		<td></td>
		</tr>
	</table>
	<div id='status'>
	'Please select any one of the options'
	</div>
</div>



<?php
}
if($pagenum == '3')
{
$date2=date("Y-m-d H:i:s");
$date1=date("Y-m-d H:i:s", strtotime("-1 hour"));
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
<div id="log" style="float:left; width:800px; height:600px; overflow:scroll">
<table border="1" style="margin:20px 0px 0px 30px;">
<tr>
<th style="width:90px;">MOTION</th>
<th style="width:90px;">PIR Output</th>
<th style="width:90px;">WINDOW</th>
<th style="width:90px;">DOOR</th>
<th style="width:90px;">TEMPERATURE</th>
<th style="width:145px;">DATE/TIME</th>
</tr>
<tr>
<th style="width:90px;">1:Yes 0:No</th>
<th style="width:90px;">1:On 0:Off</th>
<th style="width:90px;">1:Close 0:Open</th>
<th style="width:90px;">1:Close 0:Open</th>
<th style="width:90px;">Deg. C</th>
<th style="width:145px;"></th>
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
while(($row = mysql_fetch_object($data)) && ($i<3700))
  {
  $i++;
  echo "<tr>";
  echo "<td>" . $row->PIR . "</td>";
  echo "<td>" . $row->PIR_OUTPUT . "</td>";
  echo "<td>" . $row->REED_1 . "</td>";
  echo "<td>" . $row->REED_2 . "</td>";
  echo "<td>" . $row->LM35 . "</td>";
  echo "<td>" . $row->Date . "</td>";
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
	        	data_file: "data2.xml"
			};
    		swfobject.embedSWF("amline.swf", "chartdiv", "600", "400", "8.0.0", "expressInstall.swf", flashVars, params);
		</script>


<?php
}
?>
