<?php 
    include('../database/koneksi.php');
    $kd_tindakan = $_POST['kd_tindakan'];
    $tindakan = $_POST['tindakan'];

    $query = mysqli_query($koneksi,"update tbl_tindakan set kd_tindakan='$kd_tindakan', tindakan='$tindakan' where kd_tindakan='$kd_tindakan'");

    if($query){
        header('location:index.php');
    }else{
        header('location:edit-tindakan.php?error=1');
    }
?>