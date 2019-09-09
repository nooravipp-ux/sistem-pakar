<?php
    include("../database/koneksi.php");
    $id_bap = $_GET['id_bap'];
    $query = "SELECT * FROM tbl_hasil_bap WHERE id_bap = '$id_bap'";

    if ($hasil = mysqli_query($koneksi, $query)){
        while($row = mysqli_fetch_array($hasil, MYSQLI_ASSOC)){
            echo $row['id_bap'];
            echo $row['nama_pelaku'];
        }
    }

?>

<html>
<head><meta http-equiv=Content-Type content="text/html; charset=UTF-8">
<style type="text/css">
<!--
span.cls_003{font-family:Times,serif;font-size:14.1px;color:rgb(0,0,0);font-weight:bold;font-style:normal;text-decoration: none}
div.cls_003{font-family:Times,serif;font-size:14.1px;color:rgb(0,0,0);font-weight:bold;font-style:normal;text-decoration: none}
span.cls_004{font-family:"Calibri Bold Italic",serif;font-size:14.1px;color:rgb(0,0,0);font-weight:bold;font-style:italic;text-decoration: none}
div.cls_004{font-family:"Calibri Bold Italic",serif;font-size:14.1px;color:rgb(0,0,0);font-weight:bold;font-style:italic;text-decoration: none}
span.cls_006{font-family:Times,serif;font-size:12.1px;color:rgb(0,0,0);font-weight:normal;font-style:normal;text-decoration: none}
div.cls_006{font-family:Times,serif;font-size:12.1px;color:rgb(0,0,0);font-weight:normal;font-style:normal;text-decoration: none}
span.cls_014{font-family:"Calibri Italic",serif;font-size:9.1px;color:rgb(0,0,0);font-weight:normal;font-style:italic;text-decoration: none}
div.cls_014{font-family:"Calibri Italic",serif;font-size:9.1px;color:rgb(0,0,0);font-weight:normal;font-style:italic;text-decoration: none}
span.cls_002{font-family:Times,serif;font-size:12.1px;color:rgb(0,0,0);font-weight:bold;font-style:normal;text-decoration: none}
div.cls_002{font-family:Times,serif;font-size:12.1px;color:rgb(0,0,0);font-weight:bold;font-style:normal;text-decoration: none}
span.cls_015{font-family:"Calibri Italic",serif;font-size:10.0px;color:rgb(0,0,0);font-weight:normal;font-style:italic;text-decoration: none}
div.cls_015{font-family:"Calibri Italic",serif;font-size:10.0px;color:rgb(0,0,0);font-weight:normal;font-style:italic;text-decoration: none}
span.cls_016{font-family:"Calibri Italic",serif;font-size:8.6px;color:rgb(0,0,0);font-weight:normal;font-style:italic;text-decoration: none}
div.cls_016{font-family:"Calibri Italic",serif;font-size:8.6px;color:rgb(0,0,0);font-weight:normal;font-style:italic;text-decoration: none}
span.cls_007{font-family:Arial,serif;font-size:12.1px;color:rgb(0,0,0);font-weight:normal;font-style:normal;text-decoration: none}
div.cls_007{font-family:Arial,serif;font-size:12.1px;color:rgb(0,0,0);font-weight:normal;font-style:normal;text-decoration: none}
span.cls_008{font-family:Times,serif;font-size:12.1px;color:rgb(0,0,0);font-weight:normal;font-style:italic;text-decoration: none}
div.cls_008{font-family:Times,serif;font-size:12.1px;color:rgb(0,0,0);font-weight:normal;font-style:italic;text-decoration: none}
span.cls_009{font-family:Times,serif;font-size:10.0px;color:rgb(0,0,0);font-weight:normal;font-style:italic;text-decoration: none}
div.cls_009{font-family:Times,serif;font-size:10.0px;color:rgb(0,0,0);font-weight:normal;font-style:italic;text-decoration: none}
span.cls_010{font-family:"Calibri Bold",serif;font-size:9.1px;color:rgb(0,0,0);font-weight:bold;font-style:normal;text-decoration: none}
div.cls_010{font-family:"Calibri Bold",serif;font-size:9.1px;color:rgb(0,0,0);font-weight:bold;font-style:normal;text-decoration: none}
span.cls_011{font-family:Times,serif;font-size:9.1px;color:rgb(0,0,0);font-weight:normal;font-style:normal;text-decoration: none}
div.cls_011{font-family:Times,serif;font-size:9.1px;color:rgb(0,0,0);font-weight:normal;font-style:normal;text-decoration: none}
span.cls_012{font-family:Times,serif;font-size:11.1px;color:rgb(0,0,0);font-weight:normal;font-style:normal;text-decoration: none}
div.cls_012{font-family:Times,serif;font-size:11.1px;color:rgb(0,0,0);font-weight:normal;font-style:normal;text-decoration: none}
span.cls_013{font-family:Times,serif;font-size:10.0px;color:rgb(0,0,0);font-weight:normal;font-style:normal;text-decoration: none}
div.cls_013{font-family:Times,serif;font-size:10.0px;color:rgb(0,0,0);font-weight:normal;font-style:normal;text-decoration: none}
span.cls_017{font-family:Times,serif;font-size:10.0px;color:rgb(0,0,0);font-weight:bold;font-style:normal;text-decoration: none}
div.cls_017{font-family:Times,serif;font-size:10.0px;color:rgb(0,0,0);font-weight:bold;font-style:normal;text-decoration: none}
-->
</style>
<script type="text/javascript" src="3220a390-cf14-11e9-9d71-0cc47a792c0a_id_3220a390-cf14-11e9-9d71-0cc47a792c0a_files/wz_jsgraphics.js"></script>
</head>
<body>
<div style="position:absolute;left:50%;margin-left:-306px;top:0px;width:612px;height:936px;border-style:outset;overflow:hidden">
<div style="position:absolute;left:0px;top:0px">
<img src="3220a390-cf14-11e9-9d71-0cc47a792c0a_id_3220a390-cf14-11e9-9d71-0cc47a792c0a_files/background1.jpg" width=612 height=936></div>
<div style="position:absolute;left:57.74px;top:27.36px" class="cls_003"><span class="cls_003">Contoh Surat Lamaran</span></div>
<div style="position:absolute;left:60.02px;top:66.72px" class="cls_004"><span class="cls_004">Surat lamaran ditulis tangan dengan menggunakan tinta hitam</span></div>
<div style="position:absolute;left:384.31px;top:121.82px" class="cls_006"><span class="cls_006">Yogyakarta,</span></div>
<div style="position:absolute;left:419.71px;top:153.38px" class="cls_014"><span class="cls_014">Isikan waktu  tanggal pendaftaran</span></div>
<div style="position:absolute;left:441.22px;top:165.14px" class="cls_014"><span class="cls_014">(Tanggal Bulan Tahun)</span></div>
<div style="position:absolute;left:56.16px;top:168.50px" class="cls_006"><span class="cls_006">Yth. Menteri Pendidikan dan Kebudayaan</span></div>
<div style="position:absolute;left:56.16px;top:183.38px" class="cls_006"><span class="cls_006">melalui Kepala Lembaga Penjaminan Mutu Pendidikan Jawa Tengah</span></div>
<div style="position:absolute;left:56.16px;top:198.50px" class="cls_002"><span class="cls_002">Semarang</span></div>
<div style="position:absolute;left:210.77px;top:210.38px" class="cls_015"><span class="cls_015">melalui pimpinan unit kerja yang dilamar</span></div>
<div style="position:absolute;left:56.16px;top:242.90px" class="cls_006"><span class="cls_006">Saya yang bertanda tangan di bawah ini:</span></div>
<div style="position:absolute;left:56.16px;top:257.78px" class="cls_006"><span class="cls_006">Nama</span></div>
<div style="position:absolute;left:200.21px;top:257.78px" class="cls_006"><span class="cls_006">: Dina Aulia Rini Utami, S.Kom.</span></div>
<div style="position:absolute;left:56.16px;top:272.66px" class="cls_006"><span class="cls_006">Tempat/Tanggal Lahir</span></div>
<div style="position:absolute;left:200.21px;top:272.66px" class="cls_006"><span class="cls_006">: Nganjuk, 29 Februari 1988</span></div>
<div style="position:absolute;left:56.16px;top:286.46px" class="cls_006"><span class="cls_006">Jenis Kelamin</span></div>
<div style="position:absolute;left:200.21px;top:286.46px" class="cls_006"><span class="cls_006">: Perempuan</span></div>
<div style="position:absolute;left:56.16px;top:301.37px" class="cls_006"><span class="cls_006">Pendidikan</span></div>
<div style="position:absolute;left:200.21px;top:301.37px" class="cls_006"><span class="cls_006">: S-1 Ilmu Komputer, Universitas</span></div>
<div style="position:absolute;left:56.16px;top:316.25px" class="cls_006"><span class="cls_006">Formasi Dilamar</span></div>
<div style="position:absolute;left:84.50px;top:331.13px" class="cls_006"><span class="cls_006">Jenis</span></div>
<div style="position:absolute;left:200.21px;top:331.13px" class="cls_006"><span class="cls_006">: Umum (</span><span class="cls_002">wajib diisi</span><span class="cls_006">)</span></div>
<div style="position:absolute;left:345.19px;top:335.45px" class="cls_016"><span class="cls_016">Isikan Jenis Formasi yg Dilamar (Umum, Cumlaude/Pujian,</span></div>
<div style="position:absolute;left:355.63px;top:346.61px" class="cls_016"><span class="cls_016">Disabilitas, atau Putra/Putri Papua dan Papua Barat</span></div>
<div style="position:absolute;left:84.50px;top:346.13px" class="cls_006"><span class="cls_006">Jabatan</span></div>
<div style="position:absolute;left:200.21px;top:346.13px" class="cls_006"><span class="cls_006">: Pengelola Situs/Web</span></div>
<div style="position:absolute;left:84.50px;top:361.01px" class="cls_006"><span class="cls_006">Unit Kerja</span></div>
<div style="position:absolute;left:200.21px;top:361.01px" class="cls_006"><span class="cls_006">: Lembaga Penjaminan Mutu Pendidikan Jawa Tengah</span></div>
<div style="position:absolute;left:56.16px;top:375.89px" class="cls_006"><span class="cls_006">Alamat Domisili</span></div>
<div style="position:absolute;left:200.21px;top:375.89px" class="cls_006"><span class="cls_006">: Ds. Bener No. 193 RT 004 RW 001, Kec. Tegalrejo, Yogyakarta</span></div>
<div style="position:absolute;left:56.16px;top:406.61px" class="cls_006"><span class="cls_006">Dengan ini menyampaikan surat lamaran untuk dapat menjadi Calon Pegawai Negeri Sipil di lingkungan</span></div>
<div style="position:absolute;left:56.16px;top:421.49px" class="cls_006"><span class="cls_006">Kementerian Pendidikan dan Kebudayaan Tahun 2018.</span></div>
<div style="position:absolute;left:56.16px;top:442.37px" class="cls_006"><span class="cls_006">Sebagai bahan pertimbangan, disampaikan berkas kelengkapan sebagai berikut:</span></div>
<div style="position:absolute;left:55.68px;top:457.25px" class="cls_006"><span class="cls_006">1.  Surat lamaran yang ditulis tangan dan ditandatangani sendiri dengan tinta hitam, ditujukan kepada</span></div>
<div style="position:absolute;left:73.70px;top:472.13px" class="cls_006"><span class="cls_006">Menteri Pendidikan dan Kebudayan melalui Pimpinan Unit Kerja yang dilamar;</span></div>
<div style="position:absolute;left:55.68px;top:487.13px" class="cls_006"><span class="cls_006">2.  Fotokopi KTP;</span></div>
<div style="position:absolute;left:55.68px;top:502.03px" class="cls_006"><span class="cls_006">3.</span><span class="cls_007"> </span><span class="cls_006"> Asli hasil cetakan (</span><span class="cls_008">print out</span><span class="cls_006">) </span><span class="cls_002">Kartu Pendaftaran SSCN 2018</span><span class="cls_006">;</span></div>
<div style="position:absolute;left:55.68px;top:516.91px" class="cls_006"><span class="cls_006">4.</span><span class="cls_007"> </span><span class="cls_006"> Fotokopi ijazah dan transkip nilai yang telah dilegalisir oleh pejabat yang berwenang;</span><span class="cls_002">*)</span></div>
<div style="position:absolute;left:55.68px;top:531.79px" class="cls_006"><span class="cls_006">5.  Pasfoto ukuran 3 x 4 cm berlatar belakang merah sebanyak 2 (dua) lembar;</span></div>
<div style="position:absolute;left:56.16px;top:546.67px" class="cls_006"><span class="cls_006">6.  Surat  keterangan  dokter  yang  menerangkan  tentang  jenis  dan/atau  tingkat  disabilitas  yang</span></div>
<div style="position:absolute;left:74.18px;top:561.55px" class="cls_006"><span class="cls_006">dialami;**)</span></div>
<div style="position:absolute;left:56.16px;top:576.43px" class="cls_006"><span class="cls_006">7.  Akta kelahiran dan/atau surat keterangan lahir;***)</span></div>
<div style="position:absolute;left:56.16px;top:591.31px" class="cls_006"><span class="cls_006">8.  Fotokopi KTP orang tua (bapak kandung atau ibu kandung);***)</span></div>
<div style="position:absolute;left:56.16px;top:606.19px" class="cls_006"><span class="cls_006">9.  Surat keterangan dari Kepala Desa/Kepala Suku yang menyatakan bahwa orang tua (bapak atau ibu)</span></div>
<div style="position:absolute;left:74.18px;top:621.07px" class="cls_006"><span class="cls_006">adalah asli Papua/Papua Barat.***)</span></div>
<div style="position:absolute;left:55.68px;top:651.91px" class="cls_006"><span class="cls_006">Demikian surat lamaran ini dibuat. Adapun seluruh data dan dokumen yang saya berikan adalah benar.</span></div>
<div style="position:absolute;left:55.68px;top:666.79px" class="cls_006"><span class="cls_006">Apabila dikemudian hari ditemukan data yang tidak benar, maka saya menerima keputusan panitia</span></div>
<div style="position:absolute;left:55.68px;top:681.67px" class="cls_006"><span class="cls_006">membatalkan keikutsertaan/kelulusan saya pada seleksi CPNS Kementerian Pendidikan dan Kebudayaan</span></div>
<div style="position:absolute;left:55.68px;top:696.55px" class="cls_006"><span class="cls_006">Tahun 2018. Atas perhatiannya diucapkan terima kasih.</span></div>
<div style="position:absolute;left:416.23px;top:739.06px" class="cls_006"><span class="cls_006">Hormat Saya,</span></div>
<div style="position:absolute;left:416.23px;top:775.90px" class="cls_009"><span class="cls_009">ditandatangani</span></div>
<div style="position:absolute;left:416.23px;top:807.46px" class="cls_006"><span class="cls_006">(Dina Aulia Rini Utami)</span></div>
<div style="position:absolute;left:56.16px;top:837.34px" class="cls_010"><span class="cls_010">*)  </span><span class="cls_011">  sebagaimana diatur dalam Keputusan Kepala Badan Kepegawaian Negara Nomor 11 Tahun 2002</span><span class="cls_012">.</span></div>
<div style="position:absolute;left:56.16px;top:849.94px" class="cls_012"><span class="cls_012">**) </span><span class="cls_011">be</span><span class="cls_013">rkas nomor 6 hanya berlaku bagi pelamar dengan kriteria formasi disabilitas.</span></div>
<div style="position:absolute;left:56.16px;top:860.74px" class="cls_017"><span class="cls_017">***)</span><span class="cls_013">berkas nomor 7, 8, dan 9 hanya berlaku bagi pelamar dengan kriteria formasi putra/putri Papua dan Papua Barat</span><span class="cls_009">.</span></div>
</div>

</body>
</html>
<a href="" onclick="window.print()">print</a>
