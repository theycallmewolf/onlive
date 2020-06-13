<?php

    require('includes/init.php');

    $json = file_get_contents('php://input');
    $obj = json_decode($json,true);
    $concert_id = $obj['concert_id'];
    $name = $obj['name'];
    $photo = $obj['photo'];
    $comment = $obj['comment'];

    $db->query("INSERT INTO comments (concert_id, name, photo, comment) VALUES ($concert_id,'$name','$photo','$comment')");

    // if(isset($_POST['concert_id']) && !empty($_POST['concert_id'])){
        

    //     $concert_id = $_POST['concert_id'];
    //     $comment = $_POST['comment'];
    //     $photo = $db->real_escape_string($_POST['photo']);
    //     $name = $db->real_escape_string($_POST['name']);
        
    //     $db->query("INSERT INTO comments (concert_id, name, photo, comment) VALUES ($concert_id,'$name','$photo','$comment')");

    // }
    
?>

