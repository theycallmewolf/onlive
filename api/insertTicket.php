<?php
  
  require('includes/init.php');
	 
  // @ https://reactnativecode.com/fetch-api-tutorial-insert-into-mysql-php/
	
  // Getting the received JSON into $json variable.
  $json = file_get_contents('php://input');

  // decoding the received JSON and store into $obj variable.
  $obj = json_decode($json,true);
  
  // Get response from JSON $obj
	$concert_id = $obj['concert_id'];
	$quantity = $obj['quantity'];
	$price = $obj['price'];
  $name = $obj['name'];
  $email = $obj['email'];
 
  $db->query("INSERT INTO tickets (concert_id, quantity, price, name, email) VALUES ('$concert_id','$quantity','$price', '$name', '$email')");

?>
