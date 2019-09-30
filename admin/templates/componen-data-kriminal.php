
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Data Kriminal</h6>
        </div>
    <div class="card-body">
        <div class="table-responsive">
        <table class="table table-striped" id="dataTable" width="100%" cellspacing="0">
            <thead class="table-info">
                <tr>
                    <th>ID BAP</th>
                    <th>NAMA PELAKU</th>
                    <th>UMUR</th>
                    <th>JENIS KELAMIN</th>
                    <th>VONIS PASAL</th>
                    <th>ACTION</th>
                </tr>
            </thead>
            <tbody>
            <?php
                include('../database/koneksi.php');
                $query = "SELECT * FROM tbl_hasil_bap";
                if ($hasil = mysqli_query($koneksi, $query)){
                    while($row = mysqli_fetch_array($hasil, MYSQLI_ASSOC)){
            ?>
            <tr>
                <td><?php echo $row["id_bap"]; ?></td>
                <td><?php echo $row["nama_pelaku"]; ?></td>
                <td><?php echo $row["umur"]; ?></td>
                <td><?php echo $row["jenis_kelamin"]; ?></td>
                <td><?php echo $row["kd_pasal"]; ?></td>
                <td><a href="detail.php?id_bap=<?php echo $row["id_bap"]; ?>"><i class="fas fa-eye"></i></a></td>
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