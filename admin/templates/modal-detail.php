<!-- Modal -->
<div class="modal fade" id="detail" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="container">
            <?php
              include("../database/koneksi.php");
              echo "hello";
              $query = "SELECT * FROM tbl_hasil_bap";
              $data = mysqli_query($koneksi,$query);
              $row = mysqli_fetch_array($data,MYSQLI_ASSOC);
              echo $row['id_bap'];
            ?>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Cetak</button>
      </div>
    </div>
  </div>
</div>