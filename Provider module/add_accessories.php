<?php
include '../connect.php';
$reg_id=$_POST['reg_id'];
$product_name=$_POST['product_name'];
$brand_name=$_POST['brand_name'];
$type=$_POST['type'];
$discription=$_POST['discription'];
$price=$_POST['price'];
$discount=$_POST['discount'];
$offer_price=$_POST['offer_price'];
$img=$_FILES['img']['name'];
$img_path='accessories/'.$img;
$tmp_name=$_FILES['img']['tmp_name'];
move_uploaded_file($tmp_name,$img_path);
$sql=mysqli_query($con,"INSERT INTO accessories (product_name,brand_name,type,discription,price,discount,offer_price,reg_id,img) values 
('$product_name','$brand_name','$type','$discription','$price','$discount','$offer_price','$reg_id','$img')");
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