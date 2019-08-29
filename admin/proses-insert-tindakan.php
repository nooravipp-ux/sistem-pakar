<?php 
    include('../database/koneksi.php');
    $kd_tindakan = $_GET['kd_tindakan'];
    $tindakan = $_GET['tindakan'];
        

    $query = "INSERT INTO tbl_tindakan (kd_tindakan, tindakan) VALUES ('$kd_tindakan', '$tindakan')";

    if (mysqli_query($koneksi, $query)){
        header("location:index.php");
    } else {
        echo "Error". mysqli_error($koneksi);
    }
?>