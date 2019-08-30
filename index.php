<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HOME</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="assets/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/sb-admin-2.min.css" >
</head>
<body id="page-top">
<div id="wrapper">
    <!--Content Wrapper-->
    <div id="content-wrapper" class="d-flex flex-column">
        <?php
            include('templates/header.php');
        ?>
        <!--Main Content-->
        <div id="content">
            
            <!--Top Bar-->
            <nav class="navbar navbar-expand-lg navbar-dark bg-white topbar fixed-top">
                <!--Navigasi-->
                <nav>
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                      <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-beranda" role="tab" aria-controls="nav-home" aria-selected="true">Beranda</a>
                      <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-kuhp" role="tab" aria-controls="nav-profile" aria-selected="false">KUHP</a>
                    </div>
                </nav>
                    <?php 
                        session_start();
                        $_SESSION['status'] = "";
                        if($_SESSION['status'] == "login"){?>
                            <ul class="navbar-nav ml-auto">
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="admin/index.php">
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small"></span>
                                    <img class="img-profile rounded-circle" src="">
                                </a>
                            </li>
                        </ul>
                        <?php }else{
                    ?>
                  <ul class="navbar-nav ml-auto">
                      <li class="nav-item dropdown no-arrow">
                          <a class="nav-link dropdown-toggle" href="templates/login-form.php">
                              <span class="mr-2 d-none d-lg-inline text-gray-600 small">LOGIN</span>
                              <img class="img-profile rounded-circle" src="">
                          </a>
                      </li>
                  </ul> <?php } ?>
                  <!--End of Admin Profil--> 
                  
            </nav>
            <!-- End of Topbar -->
        </div>
        <!--End of Main Content-->   
        <!--Nav content-->
        <div class="tab-content pad-custom" id="nav-tabContent">
            
            <?php
                include('templates/beranda.php')
            ?>
            <!-- KUHP-->
            <?php
                include('templates/kuhp.php');
            ?>
            
            <!-- End of BAP Form -->
        </div>
        <!--end of Nav content-->
        <?php   
            include('templates/footer.php');
        ?>
        </div>   
</div>
  
    <script src="assets/js/jquery.min.js"></script>
    <!--custom script for all-->
    <script src="assets/js/sb-admin-2.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
</body>
</html>