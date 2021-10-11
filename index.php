<!doctype html>
<<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>HM</title>
	<style >
		table,th,td{
			border: 1px solid black;
		}
	</style>
</head>
<body>

	<?php 
		$servername = "localhost";
		$username = "root";
		$password = "";
		$dbname = "users";

		$conn=mysqli_connect($servername,$username,$password,$dbname);
		if(!$conn){
			die("connertion Failed: ". mysqli_connect_error());
		}

		$sql = "INSERT INTO user(name,surname,birthday,registered_at)
		VALUES('Ana', 'Qavtaradze', '1999-02-12', 'facebook,instagram'),
		('Nika', 'Apshinashvili', '2004-09-21', 'facebook,Twitter'),
		('Giorgi', 'Giorgadze', '1992-12-10', 'facebook'),
		('Lasha', 'Bolqvadze','2000-05-05','instagram,Vk,facebook')";
		
		if ($conn->query($sql) === TRUE) {
	  	echo "New record created successfully" . "<br>";
		} else {
	  	echo "Error: " . $sql . "<br>" . $conn->error;
		}

		
		$sql="SELECT * FROM `user`";
		$results=mysqli_query($conn,$sql);

		if ($results->num_rows > 0) {
    		echo "<table><tr><th>ID</th><th>Name</th><th>Surname</th><th>Birthday</th><th>Registered</th></tr>";
			while ($row=mysqli_fetch_assoc($results)) {
				/*echo "id: ". $row["id"]. " Name: ".$row["name"]. " Surname: " 
				. $row["surname"]. " Birthday: ". $row["birthday"]. " Registreted: " .$row["registered_at"]. "<br>";*/
				echo "<tr><td> ". $row["id"]. "</td><td> ".$row["name"]. "</td><td> " 
				. $row["surname"]. " </td><td> ". $row["birthday"]. "</td><td> " .$row["registered_at"]. "</td></tr>";
			}
			echo "</table>";
		}else{
			echo "0 results";
		}

		$sql = "UPDATE user SET  surname = 'Shengelia' WHERE id = 58";
		if (mysqli_query($conn, $sql)) {
		  echo "Record updated successfully";
		} else {
		  echo "Error updating record: " . mysqli_error($conn);
		}

		$sql = "DELETE FROM user WHERE id=57";

		if ($conn->query($sql) === TRUE) {
		  echo "Record deleted successfully";
		} else {
		  echo "Error deleting record: " . $conn->error;
		}

		mysqli_close($conn);
	?>


</body>
</html>