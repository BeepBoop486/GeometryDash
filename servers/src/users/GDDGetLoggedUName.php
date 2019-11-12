<?php 

	include '../inc/db.php';
	if (isset($_SESSION["uname"])) {
		echo $_SESSION["uname"];
	}

 ?>