<?php

  require('includes/init.php');

  if(isset($_GET['code']) && !empty($_GET['code'])){
    $code = $db->real_escape_string($_GET['code']);
    $q = $db->query("
        SELECT codes.id AS ticket_id, codes.code AS ticket_code, codes.status AS ticket_status, concerts.*
        FROM codes
        INNER JOIN concerts
        WHERE codes.concert_id = concerts.id
        AND codes.status = 1
        AND codes.code = '$code'");
    $ticket = $q->fetch_object();


    echo json_encode($ticket);
  }
?>


