<?php

    require('includes/init.php');

    $json = file_get_contents('php://input');
    $obj = json_decode($json,true);
    $ticket_id = $obj['id'];
    $db->query("UPDATE codes SET status = 0 WHERE id = $ticket_id");
    
?>


