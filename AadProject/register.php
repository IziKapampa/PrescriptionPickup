<?php 
require 'config/config.php';
include("includes/handlers/register_handler.php");


?>

<html>
<head>
	<title>Repeat Prescription System</title>
	<link rel="stylesheet" type="text/css" href="Assets/css/register_style.css">
</head>
<body>


<div class="wrapper">
	


	<div class="login_box">
		
		<div class="login_header">
		<h1>Noobs Prescription</h1>
		Log in below to access content												
		</div>

		<div id="first">
			
			<form action="register.php" method="POST">
				<input type="email" name="log_email" placeholder="Email Address" value = "<?php
	
				?>" required>

				<br>
				<input type="password" name="log_password" placeholder="Password" >
				<br>
				<?php 
				if(in_array("<b><span style='color: #FF0000;'>The email/password you entered is incorrect</span></b><br>", $error_array)) echo "<b><span style='color: #FF0000;'>The email/password you entered is incorrect</span></b><br>";

				?>

				<input type='radio' name='radio' value='P'/>Patient&nbsp&nbsp&nbsp
			 	<input type='radio' name='radio' value='P'/>Pharmacist<br>

				<br>
				<?php 
				if(in_array("<b><span style='color: #FF0000;'>Access Denied! You are not a pharmacist.</span></b><br>", $error_array)) echo "<b><span style='color: #FF0000;'>Access Denied! You are not a pharmacist.</span></b><br>";
				else if(in_array("<b><span style='color: #FF0000;'>Access Denied! You are not a registered patient.</span></b><br>", $error_array)) echo "<b><span style='color: #FF0000;'>Access Denied! You are not a registered patient.</span></b><br>";
				else if(in_array("<b><span style='color: #FF0000;'>You need to select an option from the checkbox before logging in.</span></b><br>", $error_array)) echo "<b><span style='color: #FF0000;'>You need to select an option from the checkbox before logging in.</span></b><br>";	
				?>

				<input type="submit" name="login_button" value="Login">
				<br>

			 
								
				

			</form>

		</div>


</body>
</html>