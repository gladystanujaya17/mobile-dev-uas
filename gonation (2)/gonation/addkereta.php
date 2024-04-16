<?php
 header('Content-type:application/json;charset=utf-8');
 include "connect.php"; 

 if (isset($_POST['nama']) && isset($_POST['jumlah_penumpang']) && isset($_POST['tipe_kelas']) && isset($_POST['total_harga']) && isset($_POST['metode_pembayaran']) && isset($_POST['tujuan'])){
     $nama = $_POST['nama'];
     $jumlah_penumpang = $_POST['jumlah_penumpang'];
     $tipe_kelas = $_POST['tipe_kelas'];
     $total_harga = $_POST['total_harga'];
     $metode_pembayaran = $_POST['metode_pembayaran'];
     $tujuan = $_POST['tujuan'];

     $q = mysqli_query($conn, "INSERT INTO kereta(nama, jumlah_penumpang, tipe_kelas, total_harga, metode_pembayaran, tujuan) VALUES ('$nama', '$jumlah_penumpang', '$tipe_kelas', '$total_harga', '$metode_pembayaran', '$tujuan')");
     $response = array();

     if($q){
        $response["success"] = 1;
        $response["message"] = "Data berhasil ditambah";
        echo json_encode($response);
     }
     else{
         $response["success"] = 0;
         $response["message"] = "Data gagal ditambah";
         echo json_encode($response);
     }
 } else {
     $response["success"] = -1;
     $response["message"] = "Data kosong";
     echo json_encode($response);
 }
 ?>