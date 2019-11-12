<?php 

	include '../inc/db.php';
	if (isset($_POST["secret"])) {
		$secret = $_POST["secret"];
		if ($secret == GAME_REQ_SECRET) {
			if (isset($_POST["lvlname"]) && isset($_POST["lvlcnt"])) {
				
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