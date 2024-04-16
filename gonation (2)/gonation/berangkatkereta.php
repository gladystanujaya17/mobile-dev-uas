<?php

require_once 'connect.php';
$sql = "SELECT train_departure FROM avail_train";
if(!$conn->query($sql)){
    echo "Error";
} else{
    $result = $conn->query($sql);
    if($result->num_rows > 0){
        $return_arr['train_departure'] = array();
        while($row = $result->fetch_array()){
            array_push($return_arr['train_departure'], array(
                'train_id'=>$row['train_id'],
                'train_departure'=>$row['train_departure']
            ));
        }
        ech json_encode($return_arr);
    }
}

?>