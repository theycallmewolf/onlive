<?php

  require('includes/init.php');

  if(isset($_GET['cookie']) && !empty($_GET['cookie'])){
    $cookie = $db->real_escape_string($_GET['cookie']);
    $q = $db->query("SELECT * FROM concerts WHERE link = '$cookie'");
    $concert = $q->fetch_object();


    echo json_encode($concert);
  }
?>