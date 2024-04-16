<?php
 header('Content-type:application/json;charset=utf-8');
 include "connect.php"; 

 if (isset($_POST['tanggal_masuk']) && isset($_POST['tanggal_keluar']) && isset($_POST['harga'])){
     $tanggal_masuk = $_POST['tanggal_masuk'];
     $tanggal_keluar = $_POST['tanggal_keluar'];
     $harga = $_POST['harga'];

     $q = mysqli_query($conn, "INSERT INTO avail_hotel(tanggal_masuk, tanggal_keluar, harga) VALUES ('$tanggal_masuk','$tanggal_keluar', '$harga')");
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