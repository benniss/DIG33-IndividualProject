<?php
/* This file contains the connection information for accessing the MySQL database */

class Database {
    // Settings required to access the database
    private $host = "dig33-individual-assignment-s3412678.c9users.io";
    private $db_user = "s3412678";
    private $db_password = "";
    private $db_name = "c9";
    private $conn;
    
    // This is the actual connection to MySQL
    public function connect() {
      $this->conn = null;
      try { 
        $this->conn = new PDO('mysql:host=' . $this->host . ';dbname=' . $this->db_name, $this->username, $this->password);
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      } catch(PDOException $e) {
        echo 'Connection Error: ' . $e->getMessage();
      }
      return $this->conn;
    }
  }