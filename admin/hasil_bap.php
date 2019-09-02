<?php
    include('../database/koneksi.php');
    session_start();
    $kode='T001';
                            
    if(isset($_GET['kode'])){
        $kode=$_GET['kode'];
    }

    $sql = "SELECT * from tbl_pasal WHERE kd_pasal='$kode'";
    $data = mysqli_query($koneksi,$sql);
    $row = mysqli_fetch_assoc($data);
         
?>
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
  <nav class="navbar p-0 navbar-expand-md bg-gradient-primary shadow fixed-top bg-info">
    <a type="button" class="btn btn-sm btn-info" href="index.php">Dashborad Admin</a>
  	<ul class="navbar-nav mr-auto">
    </ul>
    <a class="navbar-brand" href="index.php">
      <div class="sidebar-brand-icon rotate-n-15">
        <i class="fas fa-laugh-wink"></i>
      </div>
  	</a>
  </nav>
</header>
    <main class="batas-atas">
        <div class="card text-white bg-gradient-primary mb-3">
            <h5 class="card-header bg-info text-center">HASIL BERITA ACARA PEMERIKSAAN (PAKAR)</h5>
                <div class="card-body text-left">
                <form action="simpan-data-bap.php" method="POST" >
                    <div class="form-group row">
                        <label for="nama_pelaku" class="col-sm-2 col-form-label">ID BAP</label>
                        <div class="col-sm-10">
                        <input type="text" class="form-control" name="id_bap" readonly value="<?php echo $_SESSION['id'];?>" id="nama_pelaku" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="nama_pelaku" class="col-sm-2 col-form-label">Nama Pelaku</label>
                        <div class="col-sm-10">
                        <input type="text" class="form-control" name="nama_pelaku" readonly value="<?php echo $_SESSION['nama'];?>" id="nama_pelaku" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="umur" class="col-sm-2 col-form-label">Umur</label>
                        <div class="col-sm-10">
                        <input type="text" class="form-control" name="umur" readonly value="<?php echo $_SESSION['umur'];?>" id="" placeholder="">
                        </div>
                    </div>
                   <div class="form-group row">
                        <label for="jenis_kelamin" class="col-sm-2 col-form-label">Jenis Kelamin</label>
                        <div class="col-sm-10">
                        <input type="text" class="form-control" name="jenis_kelamin" readonly value="<?php echo $_SESSION['jenis_kelamin'];?>" id="jenis_kelamin" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="vonis_pasal" class="col-sm-2 col-form-label">Vonis Pasal</label>
                        <div class="col-sm-10">
                        <input type="text" class="form-control" name="kd_pasal" readonly id="vonis_pasal" value="<?php echo $row['kd_pasal']; ?>" placeholder="">
                        </div>
                    </div>
                   <div class="form-group row">
                        <label for="hukuman" class="col-sm-2 col-form-label">Hukuman</label>
                        <div class="col-sm-10">
                        <input type="text" class="form-control" readonly id="hukuman" value="<?php echo $row['keterangan']; ?>" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-10">
                        <button type="submit" class="btn btn-primary center-block">Simpan</button>
                        </div>
                    </div>
                </form>
                    
            </div>
        </div>
    </main>
    <script src="../assets/js/jquery.min.js"></script>
    <!--custom script for all-->
    <script src="../assets/js/sb-admin-2.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
</body>
</html>
