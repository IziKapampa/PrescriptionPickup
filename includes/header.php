<?php 
require 'config/config.php';
include("includes/handlers/register_handler.php");

//Ensuring that the user successfully logged in & ensuring that the user did not get signed out.
if(isset($_SESSION['email'])){
	$pharmacistLoggedIn = $_SESSION['email'];
	$pharmacist_details_query = mysqli_query($con, "SELECT * FROM pharmacist WHERE email='$pharmacistLoggedIn'");
	$pharmacist = mysqli_fetch_array($pharmacist_details_query);
}

else {
	header("Location: register.php");
	exit();
}


?>

<html>
<head>
	<!-- Javascript -->
	<script src="https://kit.fontawesome.com/23551875e4.js" crossorigin="anonymous"></script>
	<script src="Assets/js/bootstrap.js"></script>
	<script src="Assets/js/project.js"></script>
	<script src="Assets/js/bootbox.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!--CSS-->
	<link rel="stylesheet" type="text/css" href="Assets/css/style.css">
	<link rel="stylesheet" type="text/css" href="Assets/css/bootstrap.css">
</head>
<body>

<div class="top_bar">
		<div class="logo">
			<a href="index.php">Noobs Prescription</a>
		</div>

		

</body>
</html>