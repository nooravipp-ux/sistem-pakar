<?php 
    include('../database/koneksi.php');
    $kd_pasal = $_GET['kd_pasal'];
    $hukuman = $_GET['hukuman'];
    $keterangan = $_GET['keterangan'];
        

    $query = "INSERT INTO tbl_pasal (kd_pasal, hukuman, keterangan) VALUES ('$kd_pasal', '$hukuman', '$keterangan')";

    if (mysqli_query($koneksi, $query)){
        header("location:index.php");
    } else {
        echo "Error". mysqli_error($koneksi);
    }
?>