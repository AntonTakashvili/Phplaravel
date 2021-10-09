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
	VALUES('Ana', 'Qavtaradze', '25/02/1999', 'facebook,instagram'),
	('Nika', 'Apshinashvili', '1', 'facebook'),
	('Giorgi', 'Giorgadze', '10', 'facebook')";
	
	if ($conn->query($sql) === TRUE) {
  	echo "New record created successfully";
	} else {
  	echo "Error: " . $sql . "<br>" . $conn->error;
	}

	
	$sql="SELECT * FROM `user`";
	$results=mysqli_query($conn,$sql);

	while ($row=mysqli_fetch_assoc($results)) {
		echo "id: ". $row["id"]. " Name: ".$row["name"]. " Surname: " 
		. $row["surname"]. " Birthday: ". $row["birthday"]. " Registreted: " .$row["registered_at"]. "<br>";
	}

	mysqli_close($conn);
?>