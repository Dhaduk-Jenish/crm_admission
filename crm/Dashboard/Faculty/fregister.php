<?php
	
	$connection = mysqli_connect("localhost","root","","crm_for_admission");
	$type = $_POST["type"];
	$stuid = $_POST["stuid"];
	$fname = $_POST["fname"];
	$lname = $_POST["lname"];
	$gender =$_POST["gender"];
	$contact = $_POST["contact"];
	$cast = $_POST["cast"];
	$income = $_POST["income"];
	$date = $_POST["date"];
	$city = $_POST["city"];
	$year =$_POST["year"];
	$result =$_POST["result"];
	$group = $_POST["group"];
	$empid = $_POST["empid"];
	$sc = $_POST["school/college"];
	$admissiontype = $_POST["admissiontype"];

	$insertQuery = "insert into Student values('type','$stuid','$fname','$lname','$gender','$contact','$cast','$income','$date','$city','$year','$result','$group','$empid','$sc','$admissiontype')";

	if (mysqli_query($connection, $insertQuery))
	{
    	echo "New records created successfully";
    }
    else
	{
    	echo "Error: " . $insertQuery . "<br>" . mysqli_error($connection);
	}
?>