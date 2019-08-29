<?php 
    include('../database/koneksi.php');
    $kd_relasi = $_GET['kd_relasi'];
        

    $query = "DELETE FROM tbl_relasi WHERE kd_relasi='$kd_pasal'";

    if (mysqli_query($koneksi, $query)){
        header("location:index.php");
    } else {
        echo "Error". mysqli_error($koneksi);
    }
?>