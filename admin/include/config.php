<?php
define('DB_SERVER','localhost');
define('DB_USER','id18083477_admin');
define('DB_PASS' ,'Dis@lme123456');
define('DB_NAME', 'id18083477_shopping');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>