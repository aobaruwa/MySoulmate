<?php
session_start(); // Start the session
include('connectionData.txt');
$server="ix.cs.uoregon.edu";
$user="guest";
$pass="guest";
$dbname="mySoulmate";
$port="3449";

$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
 or die('Error connecting to MySQL server.');
?>

<?php
// Process form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $user_id = $_POST["user_id"];
  $password = $_POST["password"];

  // Check if user exists in database
  $sql = "SELECT * FROM users WHERE user_id='$user_id'";
  $result = $conn->query($sql);

  if ($result->num_rows == 1) {
    // User exists, redirect to dashboard or other protected page
    $_SESSION['user_id'] = $user_id; // Set the username session variable
    header("Location: welcome.html");
    exit();
  } else {
    // User doesn't exist or password is incorrect, display error message
    echo "Invalid user_id or password.";
  }
}

// Close database connection
$conn->close();
?>