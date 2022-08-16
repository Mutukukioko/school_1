<?php
if (isset($_SESSION['user'])) {
  # code...
  header('location:index3.php');
  echo 'hello';
}
?><!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" href="./assets/main.css">
 <link rel="shortcut icon" href="./assets/logo.png" type="image/x-icon">
</head>
<body>
<form action = "./logins.php" method ="Post" class ="form">
<div>
 
    <h1 class="h1"> Login </h1>
</div>
<div class="form-group">
   
    <label>Username: </label>
    <input type="text" name="username" id="name" placeholder="Enter your username" required>

</div>
<div class="form-group">
   
    <label>Password: </label>
    <input type="password"
     name="password"
      id="password"
       placeholder="Enter your password"
        required>

</div>
<div>
    <input type="submit" value="Login">
</div>

</form>
</body>
</html>