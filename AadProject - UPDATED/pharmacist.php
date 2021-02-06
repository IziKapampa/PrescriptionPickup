<?php 
include("includes/header.php");

//Retrieving the user's information
$query = mysqli_query($con, "SELECT * FROM pharmacist WHERE email='$pharmacistLoggedIn'");
$row = mysqli_fetch_array($query);
$isAdmin = $row['admin'];


//if the user is an administrator, show them the Admin Control Panel icon
if($isAdmin == 'yes'){
	echo '<nav>
	<a href="#">
				<?php echo $pharmacist["first_name"] . " " . $pharmacist["last_name"]; ?>
			</a>
	 <a href="admin.php">	
	  	<i class="fas fa-user-shield fa-2x"></i>
	  </a>			
	  <a href="includes/handlers/logout.php">
		<i class="fas fa-power-off fa-2x"></i>
	  </a>
</nav>';
}
//if the user is not an administrator, hide the Admin Control Panel icon
else {
	echo '<nav>
	<a href="#">
				<?php echo $pharmacist["first_name"] . " " . $pharmacist["last_name"]; ?>
			</a>		
	  <a href="includes/handlers/logout.php">
		<i class="fas fa-power-off fa-2x"></i>
	  </a>
</nav>';

}


?>




<div class='pharmacist_name'>


</div>

<div class='container'>
	<div class='content'>
		<h1>Choose A Service</h1>
		<ul>
			<li><a href="#">Access Patient Information</a></li>
			<li><a href="#">View Blood-Test Schedule</a></li>
		</ul>
	</div>
</div>

