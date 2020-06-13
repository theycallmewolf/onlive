<?php

  require('includes/init.php');

  if(isset($_GET['id']) && !empty($_GET['id'])){
    $id = $db->real_escape_string($_GET['id']);
    $q = $db->query("SELECT * FROM concerts WHERE id = '$id'");
    $concert = $q->fetch_object();


    echo json_encode($concert);
  }
?>