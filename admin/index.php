<?php
  session_start();
  if($_SESSION['status'] != "login"){
    header("location:../templates/login-form.php");
  }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ADMIN</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="../assets/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="../assets/css/sb-admin-2.min.css" >
</head>
<body id="page-top">
    <!-- Page wrapper-->
    <div id="wrapper">
        <!--Sidebar-->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion static-top" id="accordionSidebar">
            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3">Sistem Pakar</div>
                </a>
          
                <!-- Divider -->
                <hr class="sidebar-divider my-0">
          
                <!-- Nav Item - HOME -->
                <li class="nav-item active">
                  <a class="nav-link" href="../index.php">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Beranda</span></a>
                </li>
          
                <!-- Divider -->
                <hr class="sidebar-divider">
          
                <!-- Heading -->
                <div class="sidebar-heading">
                  Knowlege Base
                </div>
          
                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                  <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>TINDAKAN</span>
                  </a>
                </li>
          
                <!-- Nav Item - Utilities Collapse Menu -->
                <li class="nav-item">
                  <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>PASAL</span>
                  </a>
                </li>

                <!-- Nav relasi -->
                <li class="nav-item">
                  <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#componen-relasi" aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>RELASI</span>
                  </a>
                </li>
          
                <!-- Divider -->
                <hr class="sidebar-divider">
          
                <!-- Heading -->
                <div class="sidebar-heading">
                  Laporan
                </div>
          
                <!-- Nav Item - Data Kriminal-->
                <li class="nav-item">
                  <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#data-kriminal" aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>DATA KRIMINAL</span>
                  </a>
                </li>
          
                <!-- Nav Item - BAP -->
                <li class="nav-item">
                  <a class="nav-link" data-toggle="modal" data-target="#exampleModalCenter" href=""><i class="fas fa-fw fa-chart-area"></i><span>BAP</span></a>
                </li>
                <!-- Modal for BAP-->
                <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                  <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Masukan Identitas Pelaku</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                      <form action="insert-data-pelaku.php" method="GET">
                        <div class="form-group row">
                          <label for="id_bap" class="col-sm-2 col-form-label">ID BAP</label>
                          <div class="col-sm-10">
                            <input type="text" name="id_bap" class="form-control" id="id_bap">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="nama_pelaku" class="col-sm-2 col-form-label">Nama Pelaku</label>
                          <div class="col-sm-10">
                            <input type="text" name="nama_pelaku" class="form-control" id="nama_pelaku">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="umur" class="col-sm-2 col-form-label">Umur</label>
                          <div class="col-sm-10">
                            <input type="number" name="umur" class="form-control" id="umur">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="jenis_kelamin" class="col-sm-2 col-form-label">Jenis Kelamin</label>
                          <div class="col-sm-10">
                            <input type="text" name="jenis_kelamin" class="form-control" id="jenis_kelamin">
                          </div>
                        </div>
                    
                        <button type="submit" class="btn btn-primary">lanjut BAP</button>
                      </form>
                      </div>
                      <div class="modal-footer">
                      </div>
                    </div>
                  </div>
                </div>
          
                <!-- Nav Item - Logout -->
                <li class="nav-item">
                  <a class="nav-link" href="../admin/logout.php">
                    <i class="fas fa-fw fa-table"></i>
                    <span>LOGOUT</span></a>
                </li>
          
                <!-- Divider -->
                <hr class="sidebar-divider d-none d-md-block">
          
                <!-- Sidebar Toggler (Sidebar) -->
                <div class="text-center d-none d-md-inline">
                  <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>
          
        </ul>
        <!--End of sidebar-->
        <!--Content Wrapper-->
        <div id="content-wrapper" class="d-flex flex-column">
            <!--Main Content-->
            <div id="content">
                <!--Top Bar-->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                    <!--Admin Profil-->
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-dark-600 small">ADMIN</span>
                                <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
                            </a>
                            <!-- Dropdown - User Information -->
                        </li>
                    </ul>
                    <!--End of Admin Profil-->
                </nav>
                <!-- End of Topbar -->
                <!-- isi ku kontent cuy make data toggle-->
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <?php
                      include('templates/componen-tindakan.php');
                    ?>
                </div>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
                    <?php
                      include('templates/componen-pasal.php');
                    ?>
                </div>
                <div id="componen-relasi" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
                    <?php
                      include('templates/componen-data-relasi.php');
                    ?>
                </div>
                <div id="data-kriminal" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
                    <?php
                      include('templates/componen-data-kriminal.php');
                    ?>
                </div>
            </div>
            <!--End of Main Content-->
          
            <!--Footer -->
            <?php
                include('../templates/footer.php');
            ?>
            <!--end of footer -->
        </div>
        <!--End of Content Wrapper-->
    </div>
    <!-- End of wrapper-->

    

    <script src="../assets/js/jquery.min.js"></script>
    <!--custom script for all-->
    <script src="../assets/js/sb-admin-2.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>

    <script>
      $(document).ready(function(){
        $('.editbtn').on('click', function(){
          $('#form-edit-pasal').modal('show');
            $tr = $(this).closest('tr');

            var data = $tr.children("td").map(function(){
              return $(this).text();
            }).get();

            console.log(data);

            $('#kd_pasal').val(data[0]);
            $('#hukuman').val(data[1]);
        });
      });
    </script>
</body>
</html>