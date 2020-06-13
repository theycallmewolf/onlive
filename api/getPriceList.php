<?php

  require('includes/init.php');

  if(isset($_GET['id']) && !empty($_GET['id'])){
    $id = $db->real_escape_string($_GET['id']);
    $q = $db->query("SELECT id, concert_id, price AS price_val, description AS price_desc FROM pricing WHERE concert_id = '$id' ORDER BY price ASC");
    
    $price_list = [];

    while($row = $q->fetch_assoc()){
      $price_list[] = $row;
    }

    // print_r($price_list);
    echo json_encode($price_list);
  }

?>

