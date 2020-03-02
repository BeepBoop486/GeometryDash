<?php 

	include 'GDDLoginUser.php';
	if (isset($_POST["secret"])) {
		$secret = $_POST["secret"];
		if ($secret == GAME_REQ_SECRET) {
			$loggedname = $_POST["loggedname"];
			if(isset($_SESSION["uname"])) {
				if ($loggedname == $_SESSION["uname"]) {
					$loggedname = str_replace("'","\'",$_SESSION["uname"]);
					$stars = $_POST["stars"];
					$demons = $_POST["demons"];
					$icon = $_POST["icon"];
					$color1 = $_POST["color1"];
					$color2 = $_POST["color2"];
					$coins = $_POST["coins"];
					$userCoins = $_POST["userCoins"];
					$ship = $_POST["ship"];
					$ball = $_POST["ball"];
					$ufo = $_POST["ufo"];
					$wave = $_POST["wave"];
					$robot = $_POST["robot"];
					$spider = $_POST["spider"];
					$cps = $_POST["cps"];
					$diamonds = $_POST["diamonds"];
					$orbs = $_POST["orbs"];
					$completedLevels = $_POST["completedLevels"];

					//TODO: Change this
					$query = $conn->query("UPDATE users SET stars=$stars,
															demons=$demons,
															icon=$icon,
															color1=$color1,
															color2=$color2,
															coins=$coins,
															userCoins=$userCoins,
															ship=$ship,
															ball=$ball,
															ufo=$ufo,
															wave=$wave,
															robot=$robot,
															spider=$spider,
															creatorPoints=$cps,
															diamonds=$diamonds,
															orbs=$orbs,
															completedLevels=$completedLevels
											WHERE uname='$loggedname'");
					if (!$query) {
						echo mysqli_error($conn);
					}
				} else {
					include 'GDDBanUser.php';
				}
			} else {
				echo "3";
			}
		} else {
			echo "0";
		}
	} else {
		echo "-2";
	}

 ?>