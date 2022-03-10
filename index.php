<?php

use LDAP\Result;

$host = "localhost";
// $port = 3306;
// $socket = "";
$user = "root";
$password = "";
$dbname = "sqlbasics";

$con = new mysqli($host, $user, $password, $dbname)
    or die('Could not connect to the database server' . mysqli_connect_error());

$query = "SELECT name, location FROM groups";

// executes the query and returns a mysqli object
$result = $con->query($query);

// check num_rows of the returning mysqli object (= $result)
if ($result->num_rows > 0) {
    // output data of each row
    // $row has the column names as an array so you can directly use them
    while ($row = $result->fetch_assoc()) {
        echo "Name: " . $row["name"] . " - Location: " . $row["location"] . "<br>";
    }
} else {
    echo "0 results";
}
$con->close();
