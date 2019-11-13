<?php 

	include '../inc/db.php';
	if (isset($_POST["secret"])) {
		$secret = $_POST["secret"];
		if ($secret == GAME_REQ_SECRET) {
			if (isset($_POST["lvlname"]) && isset($_POST["lvlcnt"])) {
				$lvlname = str_replace("'", "\'", $_POST["lvlname"]);
				$lvlcnt = str_replace("'", "\'", $_POST["lvlcnt"]);
				if (isset($_SESSION["uname"])) {
					$uploadern = str_replace("'", "\'", $_SESSION["uname"]);
				} else {
					$uploadern = "player";
				}

				if($lvlname != "" && $lvlcnt != "") {
					$query = $conn->query("INSERT INTO levels(id, lvlname, lvlcnt, uploader, rate, stars, downloads, likes, dislikes, isepic, isfeatured) VALUES(NULL, '$lvlname', '$lvlcnt', '$uploadern', NULL,NULL, NULL,NULL,NULL, NULL, NULL)");
					if ($query) {
						echo "1";
					} else {
						echo "-1";
					}
				} else {
					echo "-4";
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