<form method="post" action="data.php">
 <input type="text" name="data">
</form>
<?php
$_POST['PIR']=$_POST['PIR'];
echo "got it ";
echo $_POST['PIR'];
$file=fopen("datafile.txt","a");
if($file)
{
fputs($file,$_POST['PIR']);
echo "write";
}
echo "done";
fclose($file);
print_r($_POST);
?>