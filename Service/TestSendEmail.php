<?php
@include '../email.php';
$name = "Mujur";
$email = "Mujurjati@gmail.com";
$phoneNumber = "123456789";
$whereFrom = "Tanjung";
$package = "1";
$numberPeople = "4";
$pickupLocation = "mataram";
$date = "10/10/10";
$total = "12345";
$message = '<html><body>';
$message .= '<table rules="all" style="border-color: #666;" cellpadding="10">';
$message .= "<tr style='background: #eee;'><td><strong>Name:</strong> </td><td>" .$name. "</td></tr>";
$message .= "<tr><td><strong>Email:</strong> </td><td>" .$email. "</td></tr>";
$message .= "<tr><td><strong>Phone Number:</strong> </td><td>" .$phoneNumber. "</td></tr>";
$message .= "<tr><td><strong>Where Are You From:</strong> </td><td>" .$whereFrom. "</td></tr>";
$message .= "<tr><td><strong>Package:</strong> </td><td>" .$package. "</td></tr>";
$message .= "<tr><td><strong>Number of people going on trek:</strong> </td><td>" .$numberPeople. "</td></tr>";
$message .= "<tr><td><strong>Pickup Location:</strong> </td><td>" .$pickupLocation. "</td></tr>";
$message .= "<tr><td><strong>Date of Pickup:</strong> </td><td>" .$date. "</td></tr>";
$message .= "<tr><td><strong>Total Tagihan:</strong> </td><td>" .$total. "</td></tr>";
$message .= "</table>";
$message .= "</body></html>";
//$contentEmail ="<div class='container'><div class='row'>".$name."</div></div>";
	if(SendEmailToClient("mujurakakom@gmail.com","ARFA TRACKER","Your Detail Order",$message)){
		echo "ok";
	}
?>
