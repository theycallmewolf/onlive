<?php

  require('includes/init.php');

  if(isset($_GET['id']) && !empty($_GET['id'])){
    $concert_id = $db->real_escape_string($_GET['id']);
  }

  $q = $db->query("SELECT * FROM comments WHERE concert_id = '$concert_id' ORDER BY date ASC");

  $comments = [];

  while($row = $q->fetch_assoc()){
    $comments[] = $row;
  }

  echo json_encode($comments);

?>
