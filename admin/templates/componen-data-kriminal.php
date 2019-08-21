
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
                    <th>nama</th>
                    <th>umur</th>
                    <th>kelamin</th>
                    <th>warganegara</th>
                    <th>alamat</th>
                    <th>Pasal</th>
                    <th>Detail</th>
                </tr>
            </thead>
            <tbody>
            <?php
                include('../database/koneksi.php');
                $query = "SELECT * FROM pelaku";
                if ($hasil = mysqli_query($koneksi, $query)){
                    while($row = mysqli_fetch_array($hasil, MYSQLI_ASSOC)){
            ?>
            <tr>
                <td><?php echo $row["nama"]; ?></td>
                <td><?php echo $row["umur"]; ?></td>
                <td><?php echo $row["kelamin"]; ?></td>
                <td><?php echo $row["warganegara"]; ?></td>
                <td><?php echo $row["alamat"]; ?></td>
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