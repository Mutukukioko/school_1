<?php
require("connect.php");

$name=$_POST['user'];
$host= $_POST['host'];
$pas=$_POST['password'];
if($_POST['alls']!=''){

$sql="GRANT ALL PRIVILEGES ON *.* TO '$name'@'$host' IDENTIFIED BY '$password'";
$query=mysqli_query($conn,$sql)or die(mysqli_error($conn));
if($query){
  header("location:users.php");
}
}
elseif ($_POST['select']!="") {
  // code...
  $sql="GRANT SELECT ON masenodb.* TO '$name'@'$host'";
  $query=mysqli_query($conn,$sql)or die(mysqli_error($conn));
  if($query){
    header("location:users.php");
  }
}
elseif ($_POST['insert']!="") {
  // code...
  $sql="GRANT  INSERT ON masenodb.* TO '$name'@'$host'";
$query=mysqli_query($conn,$sql)or die(mysqli_error($conn));
if($query){
  header("location:users.php");
}
}
elseif ($_POST['delete']) {
  // code...
    $sql="GRANT  DELETE ON masenodb.* TO '$name'@'$host'";
    $query=mysqli_query($conn,$sql)or die(mysqli_error($conn));
    if($query){
      header("location:users.php");
    }
}


mysqli_close($conn);
?>
