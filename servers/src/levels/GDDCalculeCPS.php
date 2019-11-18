<?php 

	include '../inc/db.php';

	if (isset($_GET["uname"])) {
		$uname = str_replace("'", "\'", $_GET["uname"]);
		$query = $conn->query("SELECT * FROM levels WHERE uploader='$uname'");
		if ($query) {
			if ($query->num_rows > 0) {
				$cps = 0;
				while ($row = $query->fetch_assoc()) {
					if ($row["stars"] != 0) {
						$cps += 1;
					}
					if ($row["isfeatured"] == 1) {
						$cps += 2;
					}
					if ($row["isepic"] == 1) {
						$cps += 3;
					}
				}
				echo $cps;
			} else {
				echo "0";
			}
		} else {
			echo "Error querying to the DB";
		}
	} else {
		echo "There're some parameters missing";
	}

 ?>