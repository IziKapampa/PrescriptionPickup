<?php 
include("includes/header.php");

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

<nav>
	<a href="#">
				<?php echo $pharmacist['first_name'] . " " . $pharmacist['last_name']; ?>
			</a>
	  <a href="includes/handlers/logout.php">
		<i class="fas fa-power-off fa-2x"></i>
	  </a>	

</nav>

<div class='pharmacist_name'>


</div>

<div class='container'>
	<div class='content'>
		<h1>Choose A Service</h1>
		<ul>
			<li><a href="#">Create Repeat Prescription</a></li>
			<li><a href="#">View Medication Requests</a></li>
			<li><a href="#">Register Prescription Pickup</a></li>
			<li><a href="#">Access Patient Information</a></li>
			<li><a href="#">View Blood-Test Schedule</a></li>
		</ul>
	</div>
</div>

