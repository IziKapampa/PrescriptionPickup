<?php 
include("includes/header.php");

//If the user is not an administrator, send them back to the login page
$query = mysqli_query($con, "SELECT * FROM pharmacist WHERE email='$pharmacistLoggedIn'");
$row = mysqli_fetch_array($query);

$isAdmin = $row['admin'];

if($isAdmin == 'no'){
	header("Location: register.php");
	exit();
}


?>

<!--Navigation bar-->
<nav>
	<a href="#">
				<?php echo $pharmacist['first_name'] . " " . $pharmacist['last_name']; ?>
	</a>
	<a href='pharmacist.php'>
		<i class="fas fa-home fa-2x"></i>
	</a>	
	<a href="includes/handlers/logout.php">
		<i class="fas fa-power-off fa-2x"></i>
	</a>	


</nav>

<!--Container that holds admin functionality buttons -->
<div class='container'>
	<div class='content'>
		<h1>Admin Control Panel</h1>
		<ul>
			<li><a href="javascript:void(0)">Add A Pharmacist</a></li>
			<li><a href="#">Delete A Pharmacist</a></li>
			<li><a href="#">View Pharmacists</a></li>
		</ul>
	</div>
</div>
