<?php
ob_start(); //Turns on output buffering
session_start(); // Starts a session that allows us to store variables in a session

$timezone = date_default_timezone_set("Europe/London");

$con = mysqli_connect("localhost", "root", "", "prescription"); // Connection Variable

if(mysqli_connect_errno()){ // MySQL error checking - if connection is NULL
	echo "Failed to connect to MySQL Database: " . mysqli_connect_errno();
}



?>