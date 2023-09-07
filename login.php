<?php
include 'connect.php';
$email=$_POST['email'];
$password=$_POST['password'];
$type=$_POST['type'];
$sql=mysqli_query($con,"SELECT * FROM register_tb where email='$email' and password='$password'and type='$type'");
if ($sql->num_rows>0) {
    while ($row=mysqli_fetch_assoc($sql)) {

        $myarray['result']='success';
        $myarray['reg_id']=$row['reg_id'];
        // $myarray['email']=$row['email'];
        // $myarray['password']=$row['password'];
        // $myarray['name']=$row['name'];
        // $myarray['type']=$row['type'];


    }
}
else {
    $myarray['result']='failed';
}
echo json_encode($myarray);
?>

