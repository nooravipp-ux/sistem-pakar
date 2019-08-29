
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary float-left">Data Tindakan</h6>
            <button type="button" class="btn btn-primary float-right" data-toggle="modal" data-target="#form-tindakan">
                Tambah data
            </button>
        </div>
    <div class="card-body">
        <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
                <tr>
                    <th>kode</th>
                    <th>Tindakan</th>
                    <th>action</th>
                </tr>
            </thead>
            <tbody>
            <?php
                include('../database/koneksi.php');
                $query = "SELECT * FROM tbl_tindakan";
                if ($hasil = mysqli_query($koneksi, $query)){
                    while($row = mysqli_fetch_array($hasil, MYSQLI_ASSOC)){
            ?>
            <tr>
                <td><?php echo $row["kd_tindakan"]; ?></td>
                <td><?php echo $row["tindakan"]; ?></td>
                <td><a href="hapus-data-tindakan.php?kd_tindakan=<?php echo $row["kd_tindakan"]; ?>">hapus</a></td>
            </tr>
                <?php
                    }
                } ?>
            </tbody>
        </table>
        </div>
        <?php include('form-insert-tindakan.php'); ?>
  </div>
</div>

</div>
<!-- /.container-fluid -->