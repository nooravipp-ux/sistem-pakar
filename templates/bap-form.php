<div class="tab-pane fade" id="nav-bap" role="tabpanel" aria-labelledby="nav-contact-tab">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <h1>Isi identitas pelaku</h1>
        </div>
        <div class="row justify-content-center">
            <form class="container" method="post" action="database/insert-data-pelaku.php">
                <div class="form-group row">
                    <label for="nama" class="col-sm-2 col-form-label">Nama Lengkap</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nama" name="nama">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="umur" class="col-sm-2 col-form-label">Umur</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="umur" name="umur">
                    </div>
                </div>
                <fieldset class="form-group">
                    <div class="row">
                        <legend class="col-form-label col-sm-2 pt-0">Jenis Kelamin</legend>
                        <div class="col-sm-10">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="kelamin" id="kelamin" value="laki-laki">
                                <label class="form-check-label" for="kelamin">
                                    Laki-Laki
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="kelamin" id="kelamin" value="Perempuan">
                                <label class="form-check-label" for="kelamin">
                                    Perempuan
                                </label>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div class="form-group row">
                    <label for="umur" class="col-sm-2 col-form-label">Kewarganegaraan</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="warganegara" name="warganegara">
                        </div>
                </div>
                <div class="form-group row">
                    <label for="umur" class="col-sm-2 col-form-label">Alamat</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="alamat" name="alamat">
                        </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-10">
                        <button type="submit" class="btn btn-primary">Lanjutkan ke BAP</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div