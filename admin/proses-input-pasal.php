<?php 
    include('../database/koneksi.php');
    $kd_pasal = $_GET['kd_pasal'];
    $hukuman = $_GET['hukuman'];
        

    $query = "INSERT INTO sangsi (kd_pasal, hukuman) VALUES ('$kd_pasal', '$hukuman')";

    if (mysqli_query($koneksi, $query)){
        header("location:index.php");
    } else {
        echo "Error". mysqli_error($koneksi);
    }
?>