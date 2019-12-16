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
					//$query = $conn->query("INSERT INTO levels(id, lvlname, lvlcnt, uploader, rate, stars, downloads, likes, dislikes, isepic, isfeatured, isdemon) VALUES(NULL, '$lvlname', '', '$uploadern', 0,0, 0,0,0, 0, 0, 0)");
					$stmt = $conn->prepare("INSERT INTO levels(lvlname, uploader, rate, stars, downloads, likes, dislikes, isepic, isfeatured, isdemon) VALUES(?,?,?,?,?,?,?,?,?,?)");
					$blank_int = 0;
					$stmt->bind_param("ssiiiiiiii", $lvlname, $uploadern, $blank_int,$blank_int,$blank_int,$blank_int,$blank_int,$blank_int,$blank_int,$blank_int);
					$stmt->execute();
					$stmt->close();

					$query = $conn->query("SELECT * FROM levels ORDER BY id DESC LIMIT 1");
					if ($query) {
						if ($query->num_rows > 0) {
							$row = $query->fetch_array(MYSQLI_ASSOC);
							$previousId=$row["id"];
							$flvl = fopen("saved/".$previousId.".gdl", "w");
							fwrite($flvl, $lvlcnt);
							fclose($flvl);
							echo "1";
						} else {
							echo "-405#2";
						}
					} else {
						echo "-405";
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