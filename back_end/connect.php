<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
//assign the form variables
$email = $_POST["email"];
$Password = $_POST["password"];
$user = $_POST["user"];
$error = false;
$emailerror = "this E-Mail is already taken";
$usererror = "this Username is already taken";

//setting the DB information

$host = "localhost";
$dbname = "test";
$username = "root";
$password = "";
//setting up the connection

$conn = mysqli_connect(hostname: $host,
username: $username,
password: $password,
database: $dbname);

if (mysqli_connect_errno()) {
    die("Connection error". mysqli_connect_error());
}
// Check if email or username is already taken

function isUsernameTaken($conn, $username)
{
    $checkQuery = "SELECT * FROM signup WHERE Username='$username'";
    $result = mysqli_query($conn, $checkQuery);
    return mysqli_num_rows($result) > 0;
}

function isEmailTaken($conn, $email)
{
    $checkQuery = "SELECT * FROM signup WHERE Email='$email'";
    $result = mysqli_query($conn, $checkQuery);
    return mysqli_num_rows($result) > 0;
}
if (isEmailTaken($conn, $email)) {
    echo "Email is already taken.";
} elseif (isUsernameTaken($conn, $user)) {
    echo "Username is already taken.";
}
elseif (isEmailTaken($conn, $user) and isUsernameTaken($conn, $email)) {
    echo "Uername and Email are already taken.";
}
else {
//inserting into the database
$sql = $conn->prepare("INSERT INTO signup (`Email`, `Username`, `Password`) VALUES (?, ?, ?)");


if (!$sql) {
    die(mysqli_error($conn));
}
else{
$sql->bind_param("sss", $email, $user, $Password);
$sql->execute();
$sql->close();
$conn->close();
header("Location: log_in.html");
exit();
}
}
}
?>
