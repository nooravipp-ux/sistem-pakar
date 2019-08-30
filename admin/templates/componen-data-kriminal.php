
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Data Kriminal</h6>
        </div>
    <div class="card-body">
        <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
                <tr>
                    <th>ID BAP<th>
                    <th>Nama</th>
                    <th>Umur</th>
                    <th>Jenis Kelamin</th>
                    <th>Vonis Pasal</th>
                    <th>Detail</th>
                </tr>
            </thead>
            <tbody>
            <?php
                include('../database/koneksi.php');
                $query = "SELECT * FROM tbl_pelaku";
                if ($hasil = mysqli_query($koneksi, $query)){
                    while($row = mysqli_fetch_array($hasil, MYSQLI_ASSOC)){
            ?>
            <tr>
                <td><?php echo $row["id_bap"]; ?></td>
                <td><?php echo $row["nama_pelaku"]; ?></td>
                <td><?php echo $row["umur"]; ?></td>
                <td><?php echo $row["jenis_kelamin"]; ?></td>
                <td><?php echo $row["kd_pasal"]; ?></td>
                <td><a href="" data-toggle="modal" data-target="#detail">Detail</a></td>
                <?php include('modal-detail.php');?>
            </tr>
                <?php
                    }
                } ?>
            </tbody>
        </table>
        </div>
  </div>
</div>

</div>
<!-- /.container-fluid -->