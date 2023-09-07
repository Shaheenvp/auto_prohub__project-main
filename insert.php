<?php
include'connect.php';
$name=$_POST['name'];
$email=$_POST['email'];
$phone=$_POST['phone'];
$password=$_POST['password'];
$type=$_POST['type'];
$sql=mysqli_query($con,"INSERT INTO register_tb(name,email,phone,password,type) values('$name','$email','$phone','$password','$type')");
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