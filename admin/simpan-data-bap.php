<?php
    include('../database/koneksi.php');

    $id_bap = $_POST['id_bap'];
    $nama_pelaku = $_POST['nama_pelaku'];
    $umur = $_POST['umur'];
    $jenis_kelamin = $_POST['jenis_kelamin'];
    $kd_pasal = $_POST['kd_pasal'];

    $query = "INSERT INTO tbl_hasil_bap VALUES ('$id_bap', '$nama_pelaku', '$umur', '$jenis_kelamin', '$kd_pasal')";

    if (mysqli_query($koneksi, $query)){
        header("location:index.php");
    } else {
        echo "<script>alert(".mysqli_error($koneksi).")</script>";
    }


?>