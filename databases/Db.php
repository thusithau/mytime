<?php
class Database{
    private $conn;
    private $servername = "localhost";
    private $username = "root";
    private $password = "";
    private $dbname = "mytimedb";
    private static $_dbInstance;
    private function __construct(){
        // Create connection
        $this->conn = new mysqli($this->servername, $this->username, $this->password, $this->dbname);
        // Check connection
        if ($this->conn->connect_error) {
            die("Connection failed: " . $this->conn->connect_error);
        } 
    }
    public static function getInstance(){
        if(!self::$_dbInstance){
            !self::$_dbInstance=new self();
        }
        return self::$_dbInstance;
    }

    public function getConnection(){
        return $this->conn;
    }



}