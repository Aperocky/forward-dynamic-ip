<?php

if ($_SERVER['REQUEST_METHOD'] !== 'POST'){
    exit;
}

try{
    $name = $_POST['name'];
    $ip_address = $_SERVER['REMOTE_ADDR'];
    $curr_time = $_POST['time'];
} catch (Exception $e){
    echo $e;
}

file_put_contents("location/".$name, $curr_time . "\t\t" . $ip_address . PHP_EOL, FILE_APPEND | LOCK_EX);

?>
