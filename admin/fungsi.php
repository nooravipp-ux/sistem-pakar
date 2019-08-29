<?php

function answer($kode){
    if($kode=='T001'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='bap.php?kode=T008'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='bap.php?kode=T004'>Tidak</a>";
    }
    if($kode=='T008'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='bap.php?kode=T009'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='bap.php?kode=T011'>Tidak</a>";
    }

    if($kode=='T009'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='bap.php?kode=T010'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=365A'>Tidak</a>";
    }
    if($kode=='T010'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='bap.php?kode=T005'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=365B'>Tidak</a>";
    }
    if($kode=='T005'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=365D'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=365C'>Tidak</a>";
    }
    if($kode=='T004'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='bap.php?kode=T005'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='bap.php?kode=T007'>Tidak</a>";
    }
    if($kode=='T005'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=363B'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=363C'>Tidak</a>";
    }    
    if($kode=='T007'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=364'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='bap.php?kode=T002'>Tidak</a>";
    }
    if($kode=='T002'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=363A'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='bap.php?kode=T006'>Tidak</a>";
    }
    if($kode=='T006'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=363A'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='bap.php?kode=T003'>Tidak</a>";
    }
    if($kode=='T003'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=363A'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=362'>Tidak</a>";
    }
    if($kode=='T011'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='bap.php?kode=T012'>Ya</a>"; 
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=365A'>Tidak</a>";
    }
    if($kode=='T012'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=367B'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=367A'>Tidak</a>";/*stop*/
    }

}

function kesimpulan($jurusan){
    include 'koneksi.php';
    $sql = "SELECT * from tb_kesimpulan WHERE solusi='$jurusan' AND status='setuju'";
    $data = mysqli_query($connect,$sql);
    while ($row = mysqli_fetch_assoc($data)) {
        echo '<p>-'.$row['fakta'].'</p>';
    }  
}

function solusi($kode){    
    if ($kode=='s1') {
        $jurusan = "Informatika";
        kesimpulan($jurusan);        
    }
    if ($kode=='s2') {
        $jurusan = "Sistem Informasi";
        kesimpulan($jurusan);
    }
    if ($kode=='s3') {
        $jurusan = "Arsitektur";
        kesimpulan($jurusan);
    }
    if ($kode=='s4') {
        $jurusan = "Desain Produk";
        kesimpulan($jurusan);
    }
    if ($kode=='s5') {
        $jurusan = "Akuntansi";
        kesimpulan($jurusan);
    }
    if ($kode=='s6') {
        $jurusan = "Manajemen";
        kesimpulan($jurusan);
    }
    if ($kode=='s7') {
        $jurusan = "Kedokteran";
        kesimpulan($jurusan);
    }
    if ($kode=='s8') {
        $jurusan = "Bioteknologi";
        kesimpulan($jurusan);
    }
    if ($kode=='s9') {
        $jurusan = "Teologi";
        kesimpulan($jurusan);
    }
    if ($kode=='s10') {
        $jurusan = "Pendidikan Bahasa Inggris";
        kesimpulan($jurusan);
    }
    if ($kode=='s11') {
        $jurusan = "x-1";
        kesimpulan($jurusan);
    }
     if ($kode=='s12') {
        $jurusan = "x-2";
        kesimpulan($jurusan);
    }
    if ($kode=='s13') {
        $jurusan = "Informatika (non IPA)";
        kesimpulan($jurusan);
    }
    if ($kode=='s14') {
        $jurusan = "Sistem Informasi (non IPA)";
        kesimpulan($jurusan);
    }
    if ($kode=='s15') {
        $jurusan = "Arsitektur (non IPA)";
        kesimpulan($jurusan);
    }
    if ($kode=='s16') {
        $jurusan = "Desain Produk (non IPA)";
        kesimpulan($jurusan);        
    }
    if ($kode=='s17') {
        $jurusan = "Akuntansi (non IPA)";
        kesimpulan($jurusan);
    } 
    if ($kode=='s18') {
        $jurusan = "Manajemen (non IPA)";
        kesimpulan($jurusan);
    }
    if ($kode=='s19') {
        $jurusan = "Kedokteran (non IPA)";
        kesimpulan($jurusan);
    }
    if ($kode=='s20') {
        $jurusan = "Bioteknologi (non IPA)";
        kesimpulan($jurusan);
    }
     if ($kode=='s21') {
        $jurusan = "Teologi (non IPA)";
        kesimpulan($jurusan);
    }
     if ($kode=='s22') {
        $jurusan = "Pendidikan Bahasa Inggris (non IPA)";
        kesimpulan($jurusan);
    }
     if ($kode=='s23') {
        $jurusan = "x-3";
        kesimpulan($jurusan);
    }
     if ($kode=='s24') {
        $jurusan = "x-4";
        kesimpulan($jurusan);   
    }
     if ($kode=='s25') {
        $jurusan = "Arsitek (non SMA)";
        kesimpulan($jurusan);
    }
     if ($kode=='s26') {
        $jurusan = "Desain Produk (non SMA)";
        kesimpulan($jurusan);
    }
     if ($kode=='s27') {
        $jurusan = "Informatika (non SMA)";
        kesimpulan($jurusan);
    }
     if ($kode=='s28') {
        $jurusan = "Sistem Informasi (non SMA)";
        kesimpulan($jurusan);
    }
     if ($kode=='s29') {
        $jurusan = "Akutansi (non SMA)";
        kesimpulan($jurusan);
    }
     if ($kode=='s30') {
        $jurusan = "Manajemen (non SMA)";
        kesimpulan($jurusan);
    }
     if ($kode=='s31') {
        $jurusan = "x-5";
        kesimpulan($jurusan);
    }
}


?>