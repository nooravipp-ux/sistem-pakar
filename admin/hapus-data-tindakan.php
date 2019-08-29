<?php 
    include('../database/koneksi.php');
    $kd_tindakan = $_GET['kd_tindakan'];
        

    $query = "DELETE FROM tbl_tindakan WHERE kd_tindakan='$kd_tindakan'";

    if (mysqli_query($koneksi, $query)){
        header("location:index.php");
    } else {
        echo "Error". mysqli_error($koneksi);
    }
?>