<?php
    include 'conn.php';

    $judul = $_POST ['judul'];
    $pengarang = $_POST ['pengarang'];
    $rak = $_POST ['rak'];

    $connect->query("INSERT INTO tb_item (judul, pengarang, rak) VALUES ('".$judul."','".$pengarang."','".$rak."')")
?>