<?php

  require('includes/init.php');

  $condition = '';

  if(isset($_GET['highlight'])){
    $condition = ' WHERE highlight = 1';
  }

  $q = $db->query('SELECT * FROM concerts '.$condition.' ORDER BY date ASC');

  $concerts = [];

  while($row = $q->fetch_assoc()){
    $concerts[] = $row;
  }
  // print_r($concerts);
  echo json_encode($concerts);

?>
