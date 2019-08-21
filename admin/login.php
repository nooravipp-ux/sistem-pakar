<?php
    include('../database/koneksi.php');

    $username = $_POST['username'];
    $password = $_POST['password'];

    $dataUser = mysqli_query($koneksi, "SELECT * FROM user WHERE username='$username' AND password = '$password'");

    $cekData = mysqli_num_rows($dataUser);
    if ($cekData > 0){
        session_start();
        $_SESSION['username'] = $username;
        $_SESSION['status'] = "login";
        header("location:../home.php");
    } else {
        header("location:../index.php");
    }
?>