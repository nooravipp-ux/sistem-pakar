
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary float-left">Data Relasi</h6>

            <button type="button" class="btn btn-primary float-right" data-toggle="modal" data-target="#form-relasi">
                Tambah data
            </button>
        </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-striped" id="dataTable" width="100%" cellspacing="0">
                <thead class="table-info">
                    <tr>
                        <th>kode pasal</th>
                        <th>kode tindakan</th>
                        <th>action</th>
                    </tr>
                </thead>
                <tbody>
                <?php
                    include('../database/koneksi.php');
                    $query = "SELECT * FROM tbl_relasi";
                    if ($hasil = mysqli_query($koneksi, $query)){
                        while($row = mysqli_fetch_array($hasil, MYSQLI_ASSOC)){
                ?>
                <tr>
                    <td><?php echo $row["kd_pasal"];?></td>
                    <td><?php echo $row["kd_tindakan"];?></td>
                    <td>
                        <a href="hapus-data-pasal.php?kd_pasal=<?php echo $row["kd_pasal"]; ?>"><i class="fas fa-trash-alt"></i></a> | 
                        <button type="button" class="btn btn-succes editbtn"><i class="far fa-edit"></i></button>
                    </td>
                </tr>
                    <?php
                        }
                    } ?>
                </tbody>
            </table>
        </div>
    
        <?php include('form-update-pasal.php'); ?>
        <?php include('form-input-relasi.php') ?>
    </div>
</div>

</div>
<!-- /.container-fluid -->