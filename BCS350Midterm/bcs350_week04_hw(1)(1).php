<?php
// bcs350_week04_hw.php - Week 04 Homework
// Written by: Charles Kaplan, March 2022

// Variables
	$pgm 		= 'bcs350_week04_12.php';
	
// Connect to MySQL and the BCS350 Database
	$mysqli = mysqli_connect('localhost', 'root', NULL, 'bcs350');
	if (!$mysqli) echo "MySQLi Connect Error: " . mysqli_connect_error();	

// Create and Execute Query
	$query = "SELECT rowid, firstname, lastname
			  FROM phonebook
			  ORDER BY lastname, firstname";
	$result = mysqli_query($mysqli, $query);
	if (!$result) echo "MySQLi Query Error [$query]: " . mysqli_error($mysqli);
	
// Output
	echo "<form action='$pgm' method='GET'>
		  <table align='center'><tr><td>
          Select a Name for Update
		  <select name='r' onchange='this.form.submit();'>";
	while(list($rowid, $firstname, $lastname) = mysqli_fetch_row($result))
		echo "<option value='$rowid'>$firstname $lastname</option>";
	echo "</select></td></tr></table></form>";
?>