<?php
	
	$connection = mysqli_connect("localhost","root","","crm_for_admission");
	$travel = $_POST["travel"];
	$title = $_POST["title"];
	$amount = $_POST["amount"];
	$fileupload = $_POST["fileupload"];

	$insertQuery = "insert into Student values('travel','$title','$amount','$fileupload')";

	if (mysqli_query($connection, $insertQuery))
	{
    	echo "New records created successfully";
    }
    else
	{
    	echo "Error: " . $insertQuery . "<br>" . mysqli_error($connection);
	}
?>