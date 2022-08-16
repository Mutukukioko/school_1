<?php

require('connect.php');
$user = $_POST['username'];
$pass = $_POST['password'];
session_start();
$_SESSION['user']=$user;

// echo $user,'  ',$pass;


if($user == 'admin' && $pass == 'root'){
  
    header('location:index3.php');
    
    
    }
    else{
        echo 'Invalid Details';
        session_destroy();
    }

?>