<?php 
    include('../database/koneksi.php');
    $kd_pasal = $_POST['kd_pasal'];
    $hukuman = $_POST['hukuman'];
    $keterangan = $_POST['keterangan'];

    $query = mysqli_query($koneksi,"update tbl_pasal set kd_pasal='$kd_pasal', hukuman='$hukuman', keterangan='$keterangan' where kd_pasal='$kd_pasal'");

    if($query){
        header('location:index.php');
    }else{
        header('location:edit-pasal.php?error=1');
    }
?>