<?php
include '../connect.php';
$reg_id=$_POST['reg_id'];
$vehicle_name=$_POST['vehicle_name'];
$brand_name=$_POST['brand_name'];
$fuel=$_POST['fuel'];
$segment=$_POST['segment'];
$milege=$_POST['milege'];
$enginecc=$_POST['enginecc'];
$vehicleyear=$_POST['vehicleyear'];
$kmdriven=$_POST['kmdriven'];
$price=$_POST['price'];
$type=$_POST['type'];
$img=$_FILES['img']['name'];
$img_path='usedvehicle/'.$img;
$tmp_name=$_FILES['img']['tmp_name'];
move_uploaded_file($tmp_name,$img_path);
$sql=mysqli_query($con,"INSERT INTO usedvehicle_tb(vehicle_name,brand_name,fuel,segment,milege,enginecc,vehicle_year,kmdriven,price,type,reg_id,img) values ('$vehicle_name','$brand_name','$fuel','$segment','$milege','$enginecc','$vehicleyear','$kmdriven','$price','$type','$reg_id','$img')");
if($sql)
{
    $myarray['result']='success';
}
else
{
     $myarray['result']='fail';
}
echo json_encode($myarray)

?>
