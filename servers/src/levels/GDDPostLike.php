<?php 


	if (isset($_POST['lvlid'])) {
		$lvlid = $_POST['lvlid'];
		include 'GDDHaveILiked.php';
		if(isset($_SESSION["uname"])) {
			//If we haven't like the level, we'll reach this piece of code
			$stmt = $conn->prepare("INSERT INTO likes(uname, lvlid) VALUES(?,?)");
			$stmt->bind_param("si", $_SESSION['uname'], $lvlid);
			if ($stmt->execute()) {
				echo "1";
			} else {
				echo "0";
			}
		}
	}

 ?>