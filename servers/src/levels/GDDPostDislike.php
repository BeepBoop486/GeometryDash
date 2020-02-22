<?php 


	if (isset($_POST['lvlid'])) {
		$lvlid = $_POST['lvlid'];
		include 'GDDHaveILiked.php'; //You can't dislike a level you've already liked
		include 'GDDHaveIDisliked.php'; //And this'll check if you've already disliked the level as well
		if(isset($_SESSION["uname"])) {
			//If we haven't like the level, we'll reach this piece of code
			$stmt = $conn->prepare("INSERT INTO dislikes(uname, lvlid) VALUES(?,?)");
			$stmt->bind_param("si", $_SESSION['uname'], $lvlid);
			if ($stmt->execute()) {
				echo "1";
			} else {
				echo "0";
			}
		}
	}

 ?>