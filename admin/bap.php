<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HOME</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="../assets/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="../assets/css/sb-admin-2.min.css" >
</head>
<body id="page-top">
<header>
  <!-- Fixed navbar -->
  <nav class="navbar p-0 navbar-expand-md navbar-dark shadow fixed-top bg-info">
    <a class="navbar-brand" href="index.php">
    <img src="image/icon.png" height="25" class="d-inline-block align-top" alt="">
        Sistem Pakar
  	</a>
  	<ul class="navbar-nav mr-auto">
    </ul>
    <a type="button" class="btn btn-sm btn-info" href="loginpakar.php">Login Pakar</a>
  </nav>
</header>
<main class="batas-atas">
<div class="card text-white bg-info mb-3">
          <h5 class="card-header bg-info">BAP</h5>
          <div class="card-body text-center ukuran-30">

            <form method="post" action="input-ketampung.php" enctype="multipart/form-data" role="form">

                <?php
                include('../database/koneksi.php');
                $kode='T001';
                session_start();
                echo "<p>Hai, ".$_SESSION['username']."</p>";
                    
                    if(isset($_GET['kode'])){
                        $kode=$_GET['kode'];
                    }

                    $sql = "SELECT * from tbl_tindakan WHERE kd_tindakan='$kode'";
                    $data = mysqli_query($koneksi,$sql);
                    $row = mysqli_fetch_assoc($data);     
                ?>
                
                <label for="exampleFormControlInput1"><?php echo $row['tindakan']; ?></label>
                
                <br>
                <div class="option">
                    <?php 
                        include "fungsi.php";
                        answer($kode);                    
                    ?>
                    
                   
                    
                </div>
                

            </form>

          </div>
    </main>
    <script src="../assets/js/jquery.min.js"></script>
    <!--custom script for all-->
    <script src="../assets/js/sb-admin-2.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
</body>
</html>
