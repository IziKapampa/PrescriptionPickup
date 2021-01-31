<?php 
include("includes/header.php");


//If the session is set, set the userLoggedIn variable to username
if(isset($_SESSION['email'])) {
	$patientLoggedIn = $_SESSION['email'];
	$patient_details_query = mysqli_query($con, "SELECT * FROM patient WHERE email='$patientLoggedIn'");
	$patient = mysqli_fetch_array($patient_details_query);
}
//Else if the user is not logged in, send them to registration page
else {
	header("Location: register.php");
	exit();
}




?>

<nav>
	<a href="#">
				<?php echo $patient['first_name'] . " " . $patient['last_name']; ?>
			</a>
	  <a href="includes/handlers/logout.php">
		<i class="fas fa-power-off fa-2x"></i>
	  </a>	

</nav>