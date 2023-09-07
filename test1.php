<?php
include 'connect.php';
$sql=mysqli_query($con,"SELECT * FROM register_tb");
$list=array();
if ($sql->num_rows>0) {
    while ($row=mysqli_fetch_assoc($sql)) {

        $myarray['result']='success';
        $myarray['reg_id']=$row['reg_id'];
        $myarray['email']=$row['email'];
        $myarray['password']=$row['password'];
        $myarray['name']=$row['name'];
        $myarray['type']=$row['type'];
        array_push($list,$myarray);
    }
}
else {
    $myarray['result']='failed';
    array_push($list.$myarray);

}
echo json_encode($list);
?>