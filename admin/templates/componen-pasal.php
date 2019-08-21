
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary float-left">Data Pasal</h6>

            <button type="button" class="btn btn-primary float-right" data-toggle="modal" data-target="#form-pasal">
                Tambah data
            </button>
        </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>pasal</th>
                        <th>hukuman</th>
                        <th>action</th>
                    </tr>
                </thead>
                <tbody>
                <?php
                    include('../database/koneksi.php');
                    $query = "SELECT * FROM sangsi";
                    if ($hasil = mysqli_query($koneksi, $query)){
                        while($row = mysqli_fetch_array($hasil, MYSQLI_ASSOC)){
                ?>
                <tr>
                    <td><?php echo $row["kd_pasal"]; ?></td>
                    <td><?php echo $row["hukuman"]." Tahun";?></td>
                    <td>
                        <a href="hapus-data-pasal.php?kd_pasal=<?php echo $row["kd_pasal"]; ?>">hapus</a> | 
                        <button type="button" class="btn btn-succes editbtn">Edit</button>
                    </td>
                </tr>
                    <?php
                        }
                    } ?>
                </tbody>
            </table>
        </div>
    
        <?php include('form-update-pasal.php'); ?>
        <?php include('form-input-pasal.php') ?>
    </div>
</div>

</div>
<!-- /.container-fluid -->