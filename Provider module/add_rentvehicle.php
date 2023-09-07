<?php
include '../connect.php';
$reg_id=$_POST['reg_id'];
$vehicle_name=$_POST['vehicle_name'];
$brand_name=$_POST['brand_name'];
$type=$_POST['type'];
$price=$_POST['price'];
$img=$_FILES['img']['name'];
$img_path='rent_vehicle/'.$img;
$tmp_name=$_FILES['img']['tmp_name'];
move_uploaded_file($tmp_name,$img_path);
$sql=mysqli_query($con,"INSERT INTO rental_tb (vehicle_name,brand_name,type,price,reg_id,img) values 
('$vehicle_name','$brand_name','$type','$price','$reg_id','$img')");
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