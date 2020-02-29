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

                            //$query = $conn->query("SELECT * FROM users WHERE uname='$finalname'");
                            $stmt = $conn->prepare("SELECT * FROM users WHERE uname=?");
                            $stmt->bind_param("s", $uname);
                            $stmt->execute();
                            $query = $stmt->get_result();
                            $rows = $query->num_rows;
                            $stmt->close();
                            if($rows > 0) {
                                echo "-181";
                            } else {
                                //TODO: Change this
                                /*$query = $conn->query("INSERT INTO users(uname, upass, stars, demons, icon, color1, color2, coins, userCoins, ship, ball, ufo, wave, robot, spider, creatorPoints, diamonds, orbs, completedLevels, isAdmin, isMod, isBanned, isCreatorBanned) VALUES('$finalname', '$finalpass', 0,0,0,65535,16777000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)");
                                if($query) {
                                    echo "1";
                                } else {
                                    echo "-1";
                                }*/
                                if ($stmt = $conn->prepare("INSERT INTO users(uname,upass,stars,demons,icon,color1,color2,coins,userCoins,ship,ball,ufo,wave,robot,spider,creatorPoints,diamonds,orbs,completedLevels,isAdmin,isMod,isBanned,isCreatorBanned) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)")) {
                                    $o = 0;
                                    $stmt->bind_param("ssiiiiiiiiiiiiiiiiiiiii", $finalname, $finalpass,$o,$o,$o,$o,$o,$o,$o,$o,$o,$o,$o,$o,$o,$o,$o,$o,$o,$o,$o,$o,$o);
                                    if ($stmt->execute()) {
                                        echo "1";
                                    } else {
                                        echo "-1";
                                    }
                                }
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