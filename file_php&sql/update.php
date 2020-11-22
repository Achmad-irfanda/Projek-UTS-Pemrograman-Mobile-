<?php
    include 'conn.php';
     
    $id = $_POST ['id'];
    $judul = $_POST ['judul'];
    $pengarang = $_POST ['pengarang'];
    $rak = $_POST ['rak'];

    $connect->query("UPDATE tb_item SET judul='".$judul."',pengarang='".$pengarang."',rak='".$rak."' WHERE id=".$id);
?>