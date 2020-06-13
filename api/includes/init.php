<?php

    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, X-Requested-With");

    $db = new mysqli('localhost','root','root','etic_onlive');

    if($db->error){
        die($db->error);
    }

    $db->set_charset('utf8mb4');

?>
