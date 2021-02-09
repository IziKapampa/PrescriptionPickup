<?php
/*
--------- LOGIN CREDENTIALS -----------
Pharmacist email1: jamesplaza@hotmail.com
Pharmacist password1: james123456

Pharmacist email2: mohamedaboelsoud@hotmail.com
Pharmacist password2: mohamed123456

Pharmacist email3: pedromachado@hotmail.com
Pharmacist password3: pedro123456
*/


$error_array = array();
error_reporting(E_ALL);
ini_set('display_errors', '1');


//If the user clicks on the login button
if(isset($_POST['login_button'])) {

	$email = filter_var($_POST['log_email'], FILTER_SANITIZE_EMAIL); // Makes sure email is in the correct format
	$_SESSION['log_email'] = $email; //Setting the session


	//Retrieving the stored password from the MySQL database with respect to the user's email
	$pharmacist_password_query = mysqli_query($con, "SELECT * from pharmacist WHERE email='$email'");
	$phar_row = mysqli_fetch_array($pharmacist_password_query);
	$hash = $phar_row['password'];

	$pharmacist_database_query = mysqli_query($con, "SELECT * FROM pharmacist WHERE email='$email'");
	$pharmacist_login_query = mysqli_num_rows($pharmacist_database_query);

	//if the user logs in successfully
	if($pharmacist_login_query == 1){
		//If the password matches the user 
		if(password_verify($_POST['log_password'], $hash))
		{
			//Set the session to a variable and take them to the pharmacists.php page
			$row = mysqli_fetch_array($pharmacist_database_query);
			$pharmacist_user = $row['email'];
			$_SESSION['email'] = $pharmacist_user;
			header("Location: pharmacist.php");
			exit();	

	}
		//if the password is incorrect, return an error message.
		else {
		array_push($error_array, "<b><span style='color: #FF0000;'>The password you entered does not match any database records.</span></b><br>");
		}

	}
	//if the email is does not exist, return an error message.
   else {
   	array_push($error_array, "<b><span style='color: #FF0000;'>The email you entered does not exist.</span></b><br>");
   }
		


}




?>