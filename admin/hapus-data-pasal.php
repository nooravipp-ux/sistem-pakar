<?php 
    include('../database/koneksi.php');
    $kd_pasal = $_GET['kd_pasal'];
        

    $query = "DELETE FROM sangsi WHERE kd_pasal='$kd_pasal'";

    if (mysqli_query($koneksi, $query)){
        header("location:index.php");
    } else {
        echo "Error". mysqli_error($koneksi);
    }
?>