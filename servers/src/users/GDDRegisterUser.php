<?php

    include "../inc/db.php";
    if(isset($_POST["secret"])) {
        $secret = $_POST["secret"];
        if($secret == GAME_REQ_SECRET) {
            if(isset($_POST["uname"]) && isset($_POST["upass"]) && isset($_POST["upass2"])) {
                $uname = $_POST["uname"];
                $upass = $_POST["upass"];
                $upass2= $_POST["upass2"];

                if($uname != "") {
                    if($upass != "") {
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
                        echo "-182";
                    }
                } else {
                    echo "-183";
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