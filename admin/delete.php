<?php
$id=$_GET['usa'];
$connem= mysqli_connect('localhost','root','','mysql') or die('Unable to Connect to Database');
$strSQLc= "DROP $id FROM user";


 ?>
