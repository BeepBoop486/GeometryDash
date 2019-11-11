<?php

    include '../globals.php';
    $db = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_DBNAME);

    if(!$db) {
        echo "Error connecting to the database";
        exit;
    } //If this message ain't displayed the data of the db is correctly ^^

?>