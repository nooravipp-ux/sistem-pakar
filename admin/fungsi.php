<?php

function answer($kode){

    $data = Array();
    if($kode=='T001'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='bap.php?kode=T008'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=000'>Tidak</a>";
    }
    if($kode=='T008'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='bap.php?kode=T009'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='bap.php?kode=T002'>Tidak</a>";
    }

    if($kode=='T009'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='bap.php?kode=T010'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=365A'>Tidak</a>";
    }
    if($kode=='T010'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='bap.php?kode=T005B'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=365B'>Tidak</a>";
    }
    if($kode=='T005B'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=365A'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=365C'>Tidak</a>";
    }
    if($kode=='T002'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='bap.php?kode=T003'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='bap.php?kode=T004'>Tidak</a>";
    }
    if($kode=='T003'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=363A'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=363A'>Tidak</a>";
    }    
    if($kode=='T004'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=362'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='bap.php?kode=T005R'>Tidak</a>";
    }
    if($kode=='T005R'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='bap.php?kode=T006'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=362'>Tidak</a>";
    }
    if($kode=='T006'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=363B'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='hasil_bap.php?kode=362'>Tidak</a>";
    }

}

?>