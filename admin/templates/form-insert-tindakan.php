
<div class="modal fade" id="form-tindakan" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Masukan Data Tindakan</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form method="GET" action="proses-insert-tindakan.php">
        <div class="form-group">
            <label for="formGroupExampleInput">Kode</label>
            <input type="text" name="kd_tindakan" class="form-control" id="formGroupExampleInput" placeholder="">
        </div>
        <div class="form-group">
            <label for="formGroupExampleInput2">pasal</label>
            <input type="text" name="kd_pasal" class="form-control" id="formGroupExampleInput2" placeholder="">
        </div>
        <div class="form-group">
            <label for="formGroupExampleInput2">tindakan</label>
            <input type="text" name="tindakan" class="form-control" id="formGroupExampleInput2" placeholder="">
        </div>
        <button type="submit" class="btn btn-primary">Simpan</button>
        
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
