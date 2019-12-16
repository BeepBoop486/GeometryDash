<?php

    include '../inc/db.php';
    if(isset($_POST["secret"])) {
        $secret = $_POST["secret"];
        if($secret == GAME_REQ_SECRET) {
            if(isset($_POST["uname"]) && isset($_POST["upass"])) {
                $uname = str_replace("'", "\'", $_POST["uname"]);
                if($uname != "") {
                    $chkpass = $_POST["upass"];
                    if($chkpass != "") {
                        //$query = $conn->query("SELECT * FROM users WHERE uname='$uname'");
                        $stmt = $conn->prepare("SELECT * FROM users WHERE uname=?");
                        $stmt->bind_param("s", $uname);
                        $stmt->execute();

                        $query = $stmt->get_result();
                        
                        if($query) {
                            if($query->num_rows > 0) {
                                $row = $query->fetch_array(MYSQLI_ASSOC);

                                $upass = $_POST["upass"];
                                $dbpass = $row["upass"];

                                if(password_verify($upass, $dbpass)) {
                                    $_SESSION["uname"] = $uname;
                                    echo "1";
                                } else {
                                    echo "-91";
                                }
                            } else {
                                echo "-90";
                            }
                        } else {
                            echo "-404";
                        }
                    } else {
                        echo "-93";
                    }
                } else {
                    echo "-92";
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