<?php
// method 1

$servername = "localhost";
$username = "root";
$password = "your_password";
$database = "your_database";

// create connected with database.
$conn = new mysqli($servername, $username, $password, $database);



// check the connection
if($conn->connect_error){
    die("connection failed: " . $conn->connect_error);
}
echo"connection successfull";


?>

<?php
// method 2
// create connection with database
$conn = mysqli_connect("localhost", "root", "", "databasename");

// check connection
if($conn){
    echo "successful";
}
echo"connection faild";

?>