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
    <link rel="shortcut icon" type="image/png" href="../assets/img/law.png">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="../assets/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="../assets/css/sb-admin-2.min.css" >
</head>
<body id="page-top">
<main class="batas-atas">
        <div class="card text-dark bg-white mb-3">
            <h5 class="card-header bg-white">EDIT DATA TINDAKAN</h5>
                <div class="card-body text-left">

                <?php 
                    include('../database/koneksi.php');
                    $kd_tindakan = $_GET['kd_tindakan'];
                    $query = "SELECT * FROM tbl_tindakan WHERE kd_tindakan='$kd_tindakan'";
                    if ($hasil = mysqli_query($koneksi, $query)){
                        while($row = mysqli_fetch_array($hasil, MYSQLI_ASSOC)){
                ?>
                <form action="proses-edit-tindakan.php" method="POST" >
                    <div class="form-group row">
                        <label for="nama_pelaku" class="col-sm-2 col-form-label">KODE PASAL</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" name="kd_tindakan" value="<?php echo $row['kd_tindakan'];?>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="nama_pelaku" class="col-sm-2 col-form-label">HUKUMAN</label>
                        <div class="col-sm-5">
                        <textarea id="form7" class="md-textarea form-control" rows="3" name="tindakan"><?php echo $row['tindakan'];?></textarea>
                        </div>
                    </div>
                
                        <?php }
                    } ?>
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