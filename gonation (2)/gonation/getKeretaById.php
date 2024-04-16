<?php
    header('Content-type:application/json;charset=utf-8');
    include "connect.php";

    $_POST['train_id'] = '20220001';

if(isset($_POST['train_id'])) {
    $id=$_POST['train_id'];

    $q=mysqli_query($conn,"SELECT * FROM avail_train WHERE train_id='$id'");
    $response = array();

    if(mysqli_num_rows($q)>0) {
        $response["data"] = array();
        while($r=mysqli_fetch_array($q)) {
            $kereta = array();
            $kereta["train_id"] = $r["train_id"];
            $kereta["class_id"] = $r["class_id"];
            $kereta["train_departure"] = $r["train_departure"];
            $kereta["train_arrival"] = $r["train_arrival"];
            $kereta["train_seats"] = $r["train_seats"];
            $kereta["train_price"] = $r["train_price"];
            array_push($response["data"], $kereta);
        }

        $response["success"] = 1;
        $response["message"] = "Data kereta berhasil dibaca";
        echo json_encode($response);
    } else {
        $response["success"] = 0;
        $response["message"] = "Tidak ada data";
        echo json_encode($response);
    }
} else {
        $response["success"] = -1;
        $response["message"] = "Data kosong";
        echo json_encode($response);
    }
?>