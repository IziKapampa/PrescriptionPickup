<?php
/*
--------- LOGIN CREDENTIALS -----------

Patient email1: johnwhite@hotmail.com
Patient password1: john123456

Patient email2: petershore@hotmail.com
Patient password2: peter123456

Patient email3: scottizi@hotmail.com
Patient password3: scott123456

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

if(isset($_POST['login_button'])) {


	$email = filter_var($_POST['log_email'], FILTER_SANITIZE_EMAIL); // Makes sure email is in the correct format
	$_SESSION['log_email'] = $email;

	//Retrieving the stored password + hash combination from the database
	$patient_password_query = mysqli_query($con, "SELECT * from patient WHERE email='$email'");
	$pass_row = mysqli_fetch_array($patient_password_query);
	$pw_hash = $pass_row['password'];

	$pharmacist_password_query = mysqli_query($con, "SELECT * from pharmacist WHERE email='$email'");
	$phar_row = mysqli_fetch_array($pharmacist_password_query);
	$hash = $phar_row['password'];

	$patient_database_query = mysqli_query($con, "SELECT * FROM patient WHERE email='$email'"); //Checking if the details match the user's input
	$pharmacist_database_query = mysqli_query($con, "SELECT * FROM pharmacist WHERE email='$email'");

	$patient_login_query = mysqli_num_rows($patient_database_query); //returns the number of results
	//if the user logs in successfully
	$pharmacist_login_query = mysqli_num_rows($pharmacist_database_query);


	if($patient_login_query == 1) {
		if(password_verify($_POST['log_password'], $pw_hash))
		{
		if(isset($_POST['radio'])){
			if(['radio' == "Patient"]){
				$row = mysqli_fetch_array($patient_database_query); //Allows us to access the results returned from the query above
				$patient_user = $row['email']; //Accessing the query for email
				$_SESSION['email'] = $patient_user;
				header("Location: patient.php");
				exit();
			}
			else if(['radio' == "Pharmacist"]){
				array_push($error_array, "<b><span style='color: #FF0000;'>Access Denied! You are not a pharmacist.</span></b><br>");
			}
		}
		else {
			array_push($error_array, "<b><span style='color: #FF0000;'>You need to select an option from the checkbox before logging in.</span></b><br>");
		}	
	}
	}
	/*else if($patient_login_query != 1){
		array_push($error_array, "<b><span style='color: #FF0000;'>The email/password you entered is incorrect</span></b><br>");
	}*/
	if($pharmacist_login_query == 1){
	if(password_verify($_POST['log_password'], $hash))
	{
		if(isset($_POST['radio'])){
			if(['radio' == "Pharmacist"]){
				$row = mysqli_fetch_array($pharmacist_database_query);
				$pharmacist_user = $row['email'];
				$_SESSION['email'] = $pharmacist_user;
				header("Location: pharmacist.php");
				exit();
			}
			else if(['radio' == "Patient"]){
				array_push($error_array, "<b><span style='color: #FF0000;'>Access Denied! You are not a registered patient.</span></b><br>");
			}
		}
		else {
			array_push($error_array, "<b><span style='color: #FF0000;'>You need to select an option from the checkbox before logging in.</span></b><br>");
		}	

	}
}
		if($pharmacist_login_query != 1 && isset($_POST['radio']) == 'Pharmacist'){
			array_push($error_array, "<b><span style='color: #FF0000;'>The email/password you entered is incorrect</span></b><br>");
		}

		else if ($patient_login_query != 1 && isset($_POST['radio']) == 'Patient'){
			array_push($error_array, "<b><span style='color: #FF0000;'>The email/password you entered is incorrect</span></b><br>");
		}
		


}




?>