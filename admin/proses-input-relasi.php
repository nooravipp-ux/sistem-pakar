<?php 
    include('../database/koneksi.php');
    $kd_pasal = $_GET['kd_pasal'];
    $kd_tindakan = $_GET['kd_tindakan'];

    $query = "INSERT INTO tbl_relasi (kd_pasal, kd_tindakan) VALUES ('$kd_pasal', '$kd_tindakan')";

    if (mysqli_query($koneksi, $query)){
        header("location:index.php");
    } else {
        echo "Error". mysqli_error($koneksi);
    }
?>