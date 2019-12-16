<?php 

	include '../inc/db.php';
	if (isset($_POST["secret"])) {
		$secret = $_POST["secret"];
		if ($secret == GAME_REQ_SECRET) {
			if (isset($_POST["id"])) {
				$lvlid = str_replace("'", "\'", $_POST["id"]);
				//$query = $conn->query("SELECT * FROM levels WHERE id=$lvlid");
				$stmt = $conn->prepare("SELECT * FROM levels WHERE id=?");
				$stmt->bind_param("i", $lvlid);
				$stmt->execute();

				$query = $stmt->get_result();
				$stmt->close();

				if ($query->num_rows > 0) {
					$row = $query->fetch_array(MYSQLI_ASSOC);
					$lvldownloads = $row["downloads"];
					$downstopost = $lvldownloads + 1;
					//$query = $conn->query("UPDATE levels SET downloads=$downstopost WHERE id=$lvlid");
					$stmt = $conn->prepare("UPDATE levels SET downloads=? WHERE id=?");
					$stmt->bind_param("ii", $downstopost, $lvlid);
					if ($stmt->execute()) {
						echo "1";
					} else {
						echo "-405";
					}
				} else {
					echo "-82";
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