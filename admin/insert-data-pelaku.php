<?php
    session_start();

    $_SESSION['id'] = $_GET['id_bap'];
    $_SESSION['nama'] = $_GET['nama_pelaku'];
    $_SESSION['jenis_kelamin'] = $_GET['jenis_kelamin'];
    $_SESSION['umur'] = $_GET['umur'];

    header("location:bap.php");
?>