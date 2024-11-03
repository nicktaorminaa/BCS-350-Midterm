//dropdown.php 
//Program written by Nicholas Taormina, October 2022 

//Variables
$pgm = "bcs350_week04_12.php";

//Connect to database and MYSQL
$mysqli = mysqli_connect('localhost', 'root', NULL, 'bcs350');

//Get names from query 
$query = "SELECT DISTINCT rowid, firstname, lastname
		  FROM phonebook
		  ORDER BY lastname, firstname";
$result = mysqli_query($mysqli, $query);

//Output results
<!DOCTYPE html>
<body>
echo "<form action = '$pgm' method = 'GET'>
Select a name to update
<select name = 'Names' value = '' onchange = 'this.form.submit();'>";
while(list($rowid, $firstname, $lastname) = mysqli_fetch_row($result))
echo "<option value='$rowid'>$firstname $lastname</option>";
echo "</select> </form>";
</body>
</html>
?> 
