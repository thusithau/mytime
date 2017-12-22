<?php
require 'Db.php';
class DatabaseHandler{
    //$db=Database::getInstance();
    //$conn=$db->getConnection();
    // insert user's tel address to the database
    public function insertUser($address){
        $db=Database::getInstance();
        $conn=$db->getConnection();
        $stmt=$conn->prepare("INSERT INTO users (tel, lagna, nekatha)
        VALUES (?,?,?)");
        $stmt->bind_param("sss",$tel,$lagna,$nekatha);

        $tel=$address;
        $lagna= "Virshba";
        $nekatha= "Visa";

        $stmt->execute();
        
        // if ($conn->query($sql) === TRUE) {
        //     echo "New record created successfully";
        // } else {
        //     echo "Error: " . $sql . "<br>" . $conn->error;
        // }    
       // $conn->close();
    }

    // check whether the user is registered or not

    public function isUserRegistered($address){
        echo 123;
        $bool;
        $db=Database::getInstance();
        $conn=$db->getConnection();
        $stmt=$conn->prepare("SELECT * FROM users WHERE tel=?");
        $stmt->bind_param("s",$address);

        // $tel=$address;
        $stmt->execute();
        // $stmt->store_reult();

        if(mysqli_stmt_fetch($stmt)){
            // echo 123;
            $bool=TRUE;
        }else{
            echo 2345;
            $bool=FALSE;
        }
       // $conn->close();
        
        return $bool;
        
    }

    

}