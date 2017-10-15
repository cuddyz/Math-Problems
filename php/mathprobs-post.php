<?php
$dbhost = "localhost";
$dbuser = "root";
$dbpassword = "";
$dbname = "mathprobdb";

$req = file_get_contents('php://input');
$req = json_decode($req);
$req->content = (string) $req->content;
$req->porder = (int) $req->porder;

// Create connection
$conn = new mysqli($dbhost, $dbuser, $dbpassword, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO problem (content, porder) VALUES ('$req->content', $req->porder)";

if ($conn->query($sql) === TRUE) {
    echo $conn->insert_id;
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>