<?php
    include('koneksi.php');

    $id_pelaku = strval(rand(1, 1000));
    $nama = $_POST['nama'];
    $umur = $_POST['umur'];
    $kelamin = $_POST['kelamin'];
    $warganegara = $_POST['warganegara'];
    $alamat = $_POST['alamat'];

    $query = "INSERT INTO pelaku (id_pelaku, nama, umur, kelamin, warganegara, alamat) VALUES ('$id_pelaku', '$nama', '$umur', '$kelamin', '$warganegara', '$alamat')";

    if(mysqli_query($koneksi, $query)){
        echo "data sukses di tambahkan";
    } else {
        echo "gagal menambahkan";
    }
?>