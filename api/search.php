<?php

  require 'includes/init.php';

  $search = $db->real_escape_string($_GET['query']);

  //Query DB
  $query = $db->query("SELECT * 
                      FROM concerts 
                      WHERE title LIKE '%$search%' 
                      ORDER BY title DESC");

  //Check query error
  if($db->error){
    die($db->error);
  }

  $posts = [];

  //Loop query
  while( $row = $query->fetch_object() ){
    //Format lead
    $row->post_lead = strlen($row->post_text) > 100 ? substr($row->post_text,0,100).'...' : $row->post_text;
    //Format date
    $row->post_date = date('d M H:i',strtotime($row->post_date) );
    //Store row into array
    $posts[] = $row;
  }

  //Echo json
  echo json_encode($posts);

?>
