<?php
$dbhost = "localhost";
$dbuser = "root";
$dbpassword = "";
$dbname = "mathprobdb";

$req = file_get_contents('php://input');
$req = json_decode($req);
$req->pid = (int) $req->pid;
$req->content = (string) $req->content;
$req->porder = (int) $req->porder;

// Create connection
$conn = new mysqli($dbhost, $dbuser, $dbpassword, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


$sql = "UPDATE problem SET content = '$req->content', porder = $req->porder WHERE pid = $req->pid LIMIT 1";
$result = $conn->query($sql);

if ($conn->query($sql) === TRUE) {
    echo "Record updated successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>