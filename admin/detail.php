<?php
// memanggil library FPDF
require('../vendor/fpdf/fpdf.php');
// intance object dan memberikan pengaturan halaman PDF
$pdf = new FPDF('p','mm','A4');
// membuat halaman baru
$pdf->AddPage();
// setting jenis font yang akan digunakan
$pdf->SetFont('Arial','B',16);
// mencetak string 
$pdf->Cell(190,7,'KEPOLISAN NEGARA REPUBLIK INDONESIA',0,1,'C');
$pdf->SetFont('Arial','B',16);
$pdf->Cell(190,7,'DAERAH CIMAHI TENGAH',0,1,'C');
$pdf->SetFont('Arial','B',16);
$pdf->Cell(190,7,'KOTA CIMAHI',0,1,'C');
$pdf->Cell(190,7,'----------------------------------------------------------------------',0,1,'C');
 
// Memberikan space kebawah agar tidak terlalu rapat
$pdf->Cell(10,7,'',0,1);
$pdf->Cell(10,7,'',0,1);
$pdf->SetFont('Arial','',10);
//header 
$pdf->Cell(190,7,'BERITA ACARA PEMERIKSAAN',0,1,'C');
$pdf->Cell(190,7,'---------------------------------------------',0,1,'C');

//isi pemeriksaan
$pdf->Cell(190,7,'Berdasarkan hasil pemeriksaan pakar, bahwa pelaku : ',0,1);
//isi data BAP
include '../database/koneksi.php';
$id_bap = $_GET['id_bap'];
$query = mysqli_query($koneksi, "SELECT * FROM tbl_hasil_bap WHERE id_bap='$id_bap'");
while ($row = mysqli_fetch_array($query)){
    $id_bap = "       ID BAP               :   ".$row['id_bap'];
    $nama = "       Nama Lengkap  :   ".$row['nama_pelaku'];
    $umur = "       Umur                  :   ".$row['umur'];
    $jenis_kl = "       Jenis Kelamin   :   ".$row['jenis_kelamin'];

    $pdf->SetFont('Arial','B',10);
    $pdf->Cell(190,7,$id_bap,0,1);
    $pdf->Cell(190,7,$nama,0,1);
    $pdf->Cell(190,7,$umur,0,1);
    $pdf->Cell(190,7,$jenis_kl,0,1);
    $pdf->SetFont('Arial','',10);
    $pdf->Cell(190,7,'Telah terbukti melakukan tindak pidana berupa pencurian dan kemungkinan terjerat dengan vonis pasal :',0,1);
    $pdf->Cell(10,7,'',0,1);
    $pdf->SetFont('Arial','B',16);
    $pdf->Cell(190,7,$row['kd_pasal'],0,1,'C');
    $pdf->Cell(190,7,'--------',0,1,'C');
}

$pdf->Output();
?>
