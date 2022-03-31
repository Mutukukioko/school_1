<?php
include 'connect.php';
session_start();

if($_SERVER["REQUEST_METHOD"] == "POST") {
 $username=mysqli_real_escape_string($conn,$_POST['username']);
 $password=mysqli_real_escape_string($conn,$_POST['password']);
 $result = mysqli_query($conn,"SELECT * FROM student_info");
 $c_rows = mysqli_num_rows($result);
 if ($c_rows!=$username) {
  header("location: login.php");
 }
 $sql="SELECT regno FROM student_info WHERE email='$username' and regno='$password'";
 $result=mysqli_query($conn,$sql);
 $row=mysqli_fetch_array($result);
 $active=$row['active'];
 $count=mysqli_num_rows($result);
 if($count==1) {
  $_SESSION['login_user']=$password;
  header("location:index.php");
 }
}

?>
