<?php

    session_start();

    include '../globals.php';
    $conn = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_DBNAME);

    if(!$conn) {
        echo "Error connecting to the database";
        exit;
    } //If this message ain't displayed the data of the db is correctly ^^

?>