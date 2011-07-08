<div id="log" style="float:left; width:800px; height:600px; overflow:hidden;">
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
	$data = mysql_query("SELECT * FROM data_table WHERE Date BETWEEN \"2011-06-23\" and \"2011-06-25\"",$con);
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
