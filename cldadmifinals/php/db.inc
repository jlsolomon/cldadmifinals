<?php
try {i
    $dbh = new PDO('mysql:host=librarydb;dbname=library', 'david', '');
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}
