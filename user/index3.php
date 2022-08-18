<?php
session_start();
if (!isset($_SESSION['user'])) {
  # code...
  header('location:index.php');
  // echo 'hello';
}
  $user=$_SESSION['user'];
  
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title> Dashboard </title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
  <!-- IonIcons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/adminlte.min.css">
    <!-- Page ICON -->
    <link rel="shortcut icon" href="../assets/logo.png" type="image/x-icon">
</head>

<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href=" ./index3.html" class="nav-link">Dashboard</a>
      </li>
    </ul>
      <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
    <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="fas fa-cog"></i></span>
<!-- /.info-box-content -->
            </div>
    </ul>

    <!-- Right navbar links -->
 
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
  
    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="../dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Students name</a>
        </div>
      </div>

      
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard 
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              
              <li class="nav-item">
                <a href="./index2.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v2</p>
                </a>
              </li>
              <li class="nav-item">
                <a href=" " class="nav-link active">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v3</p>
                </a>
              </li>
            </ul>
          </li>
        </li>
        <li class="nav-item">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-book"></i>
            <p>
              Academics
              <i class="fas fa-angle-left right"></i>
              <span class="badge badge-info right"></span>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Fees statement </p>
              </a>
            </li>
            <li class="nav-item">
              <a href="" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Fees statement pdf </p>
              </a>
            </li>
            <li class="nav-item">
              <a href="" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Provisional Transcript </p>
              </a>
            </li>
            <li class="nav-item">
              <a href="" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Download Examcard </p>
              </a>
            </li>
            
           
          </ul>
        </li>
        <li class="nav-item">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-ngg" ></i>
            <p>
              Hostel Registration
            </p>
          </a>
       </li>
        <li class="nav-item">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-ngg"></i>
            <p>
              Register Units
            </p>
          </a>
       </li>
      
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper pl-5">
    <!-- Content Header (Page header) -->
    <div class="content-header">
    
     </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content  ">
     <div class="pl-5">
       <div class="col-md-5">
        <!-- Info Boxes Style 2 -->
        <div class="info-box bg-success">
          <span class="info-box-icon"><i class="far fa-bookmark"></i></span>

          <div class="info-box-content">
            <span class="info-box-text">Total Amount paid</span>
            <span class="info-box-number">41,410</span>

            <div class="progress">
              <div class="progress-bar" style="width: 70%"></div>
            </div>
            <span class="progress-description">
              70% Increase in 30 Days
            </span>
          </div>
          <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
        <div class="info-box bg-warning">
          <span class="info-box-icon"><i class="far fa-bookmark"></i></span>

          <div class="info-box-content">
            <span class="info-box-text">Bill</span>
            <span class="info-box-number">41,410</span>

            <div class="progress">
              <div class="progress-bar" style="width: 70%"></div>
            </div>
            <span class="progress-description">
              70% Increase in 30 Days
            </span>
          </div>
          <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
        <div class="info-box bg-danger">
          <span class="info-box-icon"><i class="far fa-bookmark"></i></span>

          <div class="info-box-content">
            <span class="info-box-text">Balance</span>
            <span class="info-box-number">41,410</span>

            <div class="progress">
              <div class="progress-bar" style="width: 70%"></div>
            </div>
            <span class="progress-description">
              70% Increase in 30 Days
            </span>
          </div>
          <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
        
      </div>
      </div>
      <div class="container-fluid pl-5 ">
        <div class="row">
          <div class="col-lg-6">
           
              <div class="card card-success card-outline">
                <div class="card-body box-profile">
                  <div class="text-center">
                    <img class="img-circle img-fluid elevation-2" alt="User Image"
                         src="./uploads/user4-128x128.jpg"
                         alt="User profile picture">
                  </div>
  
                  <ul class="list-group list-group-unbordered mb-3">
                    <li class="list-group-item">
                      <div class="row pt-1">
                      <div class="col-sm-6"><b>Name</b></div> <div class="col-sm-6">Mutuku Kid Dev</div>
                      </div>
                    </li>
                    <li class="list-group-item">
                      <div class="row ">
                      <div class="col-sm-6"><b>Course</b></div> <div class="col-sm-6">ComputerScience</div>
                     </div>
                  </li>
                    <li class="list-group-item">
                      <div class="row ">
                      <div class="col-sm-6"><b>Email</b></div> <div class="col-sm-6">hlungu367@gmail.com</div>
                     </div>
                  </li>
                    <li class="list-group-item">
                      <div class="row ">
                      <div class="col-sm-6"><b>phone</b></div> <div class="col-sm-6">0799207584</div>
                    </div>
                  </li>
                    <li class="list-group-item">
                      <div class="row ">
                      <div class="col-sm-6"><b>user-email</b></div> <div class="col-sm-6">example@student.masenoac.ke</div>
                    </div>
                  </li>
                    <li class="list-group-item">
                      <div class="row ">
                      <div class="col-sm-6"><b>password</b></div> <div class="col-sm-6">maseno2qpnHU</div>
                   </div>
                    </li>
                  </ul>
  
                 
                </div>
                <!-- /.card-body -->
              </div>
            
            <!-- /.card -->

            
          </div>
          <!-- /.col-md-6 -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->

  <!-- /.control-sidebar -->

  <!-- Main Footer -->
  <footer class="main-footer bg-gradient-success">
    <strong>Copyright &copy; 2022<a href="">maseno.io</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
     
    </div>
  </footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE -->
<script src="../dist/js/adminlte.js"></script>

<!-- OPTIONAL SCRIPTS -->
<script src="../plugins/chart.js/Chart.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../dist/js/pages/dashboard3.js"></script>
</body>
</html>
