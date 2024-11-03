<?php
//schedule.php
//Program written by Nicholas Taormina,October 2022
error_reporting(E_ALL);
//Connect to database and MYSQL
$mysqli = mysqli_connect('localhost', 'root', NULL, 'bcs350');
if (!$mysqli) echo "Database connection failed : " . mysqli_connect_error(); 

//Get classes from query 
$query = "SELECT RowID, Department,ClassNumber, Credits, Days,
		  Times, Building, Room, Professor
		  FROM classes
		  ORDER BY RowID";
$result = mysqli_query($mysqli, $query);
if (!$result) echo "Query Error [$query]: " . mysqli_error($mysqli);
 
//Output results
echo "<center><b>Farmingdale State College Classes</center></b><br><br> 
<table align = 'center' rules = 'all' border = 'frame'>
<tr>
<th> RowID </th>
<th> Department </th>
<th> Class Number </th>
<th> Credits </th>
<th> Days </th>
<th> Times </th>
<th> Building </th>
<th> Room </th>
<th> Professor </th>
</tr>";
while(list($RowID, $Department, $ClassNumber, $Credits, $Days, $Times, $Building, $Room, $Professor) =  mysqli_fetch_row($result)) 
{ 
echo "<tr>
			  <td>$RowID</td>
			  <td>$Department</td>
			  <td>$ClassNumber</td>
			  <td>$Credits</td>
			  <td>$Days</td>
			  <td>$Times</td>
			  <td>$Building</td>
			  <td>$Room</td>
			  <td>$Professor</td>
			  </tr>";
			 
		}
echo "</table>";
?>