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
    $pdf->SetFont('Arial','B',10);
    $pdf->Cell(190,7,'      ID BAP               : ',0,1);
    $pdf->Cell(190,7,$row['id_bap'],0,1);
    $pdf->Cell(190,7,'      Nama Lengkap  : ',0,1);
    $pdf->Cell(190,7,$row['nama_pelaku'],0,1);
    $pdf->Cell(190,7,'      Umur                  : ',0,1);
    $pdf->Cell(190,7,$row['umur'],0,1);
    $pdf->Cell(190,7,'      Jenis Kelamin   : ',0,1);
    $pdf->Cell(190,7,$row['jenis_kelamin'],0,1);

$pdf->SetFont('Arial','',10);
$pdf->Cell(190,7,'Telah terbukti melakukan tindak pidana berupa pencurian dan kemungkinan terjerat dengan vonis pasal :',0,1);
$pdf->Cell(10,7,'',0,1);
$pdf->SetFont('Arial','B',16);
$pdf->Cell(190,7,$row['kd_pasal'],0,1,'C');
$pdf->Cell(190,7,'--------',0,1,'C');
}
$pdf->Output();
?>
