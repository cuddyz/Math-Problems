<?php
$dbhost = "localhost";
$dbuser = "root";
$dbpassword = "";
$dbname = "mathprobdb";

$con = mysql_connect($dbhost, $dbuser, $dbpassword);

if (!$con) {
    die('Could not connect: ' . mysql_error());
}

mysql_select_db($dbname, $con);

$resArray = array();

$query = "SELECT * FROM problem ORDER BY porder DESC";

$result = mysql_query($query);


while ($row = mysql_fetch_assoc($result)) {
    $prob = new stdClass();
    $prob->pid = $row['pid'];
    $prob->content = $row['content'];
    $prob->porder = $row['porder'];

    $resArray[] = $prob;
}

$res = json_encode($resArray);

echo($res);

mysql_close($con);

?>