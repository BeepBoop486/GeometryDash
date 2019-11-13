<?php 

	include '../inc/db.php';
	if (isset($_POST["secret"])) {
		$secret = $_POST["secret"];
		if ($secret == GAME_REQ_SECRET) {
			if (isset($_POST["id"])) {
				$lvlid = str_replace("'", "\'", $_POST["id"]);
				$query = $conn->query("SELECT * FROM levels WHERE id=$lvlid");
				if ($query) {
					if ($query->num_rows > 0) {
						echo "1";
					} else {
						echo "-82";
					}
				} else {
					echo "-404";
				}
			} else {
				echo "-3";
			}
		} else {
			echo "0";
		}
	} else {
		echo "-2";
	}

 ?>