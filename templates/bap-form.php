<div class="tab-pane fade" id="nav-bap" role="tabpanel" aria-labelledby="nav-contact-tab">
    <div class="container">
        <div class="row justify-content-center">
            <h1>Jawab Pertanyaan Berikut :</h1>
        </div>
        <div class="row justify-content-center">
            <div class="panel panel-info" style="margin-bottom:126px;">
                <div class="panel-body">`
                <form method="post" action="input-ketampung.php" enctype="multipart/form-data" role="form">

                    <?php
                    include('database/koneksi.php');
                    $kode='T001';
                        
                        if(isset($_GET['kode'])){
                            $kode=$_GET['kode'];
                        }

                        $sql = "SELECT * from tindakan WHERE kd_tindakan='$kode'";
                        $data = mysqli_query($koneksi,$sql);
                        $row = mysqli_fetch_assoc($data);     
                    ?>

                    <label for="exampleFormControlInput1"><?php echo $row['tindakan']; ?></label>

                    <br>
                    <div class="option">
                        <?php 
                            include "fungsi.php";
                            answer($kode);                    
                        ?>
                        
                    
                        
                    </div>


                </form>
                    </div> <!--panel body-->
            </div> <!--panel info-->
	    </div> <!--row-->
    </div>
</div