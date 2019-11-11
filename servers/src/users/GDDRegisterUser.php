<?php

    include "../inc/db.php";
    if(isset($_GET["secret"])) {
        $secret = $_GET["secret"];
        if($secret == GAME_REQ_SECRET) {
            if(isset($_GET["uname"]) && isset($_GET["upass"]) && isset($_GET["upass2"])) {
                $uname = $_GET["uname"];
                $upass = $_GET["upass"];
                $upass2= $_GET["upass2"];

                if($upass == $upass2) {
                    $finalpass = password_hash($upass, PASSWORD_BCRYPT);
                    $finalname = str_replace("'", "\'", $uname);

                    $query = $conn->query("SELECT * FROM users WHERE uname='$finalname'");
                    if($query) {
                        if($query->num_rows > 0) {
                            echo "-181";
                        } else {
                            $query = $conn->query("INSERT INTO users(id, uname, upass) VALUES(NULL, '$finalname', '$finalpass')");
                            if($query) {
                                echo "1";
                            } else {
                                echo "-1";
                            }
                        }
                    } else {
                        echo "-404";
                    }
                } else {
                    echo "-180";
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