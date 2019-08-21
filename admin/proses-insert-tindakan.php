<?php 
    include('../database/koneksi.php');
    $kd_tindakan = $_GET['kd_tindakan'];
    $kd_pasal = $_GET['kd_pasal'];
    $tindakan = $_GET['tindakan'];
        

    $query = "INSERT INTO tindakan (kd_tindakan, kd_pasal, tindakan) VALUES ('$kd_tindakan', '$kd_pasal', '$tindakan')";

    if (mysqli_query($koneksi, $query)){
        header("location:index.php");
    } else {
        echo "Error". mysqli_error($koneksi);
    }
?>