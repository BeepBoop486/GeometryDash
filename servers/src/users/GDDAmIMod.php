<?php 

	include '../inc/db.php';
	if (isset($_SESSION["uname"])) {
		$uname = str_replace("'", "\'",$_SESSION["uname"]);
		//$query = $conn->query("SELECT * FROM users WHERE uname='$uname'");
		$stmt = $conn->prepare("SELECT * FROM users WHERE uname=?");
		$stmt->bind_param("s", $uname);
		$stmt->execute();

		$query = $stmt->get_result();
		if ($query) {
			if ($query->num_rows > 0) {
				$row = $query->fetch_array(MYSQLI_ASSOC);
				echo $row["isMod"];
			} else {
				echo "-90";
			}
		} else {
			echo "-404";
		}
	} else {
		echo "3";
	}

 ?>