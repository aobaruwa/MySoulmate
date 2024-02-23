<?php
session_start(); // Start the session
// Database connection parameters
include('connectionData.txt');
$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
 or die('Error connecting to MySQL server.');
// Handle sign-up functionality
if (isset($_POST['submit'])) {
    // Retrieve the form data securely
    $user_id = $_POST["user_id"];
    $location = $_POST["location"];
    $height = $_POST["height"];
    $age = $_POST["age"];
    $gender = $_POST["gender"];
    $smokes = $_POST["smokes"];
    $drinks = $_POST["drinks"];
    $race = $_POST["race"];
    $has_kids = $_POST["has_kids"];
    $language = $_POST["language"];
    $hobby = $_POST["hobby"];

    $sql = "INSERT INTO users (user_id, location,  height, age, gender, smokes, drinks, race, has_kids, language, hobby)
            VALUES ('$user_id', '$location', '$height', '$age', '$gender', '$smokes', '$drinks', '$race', '$has_kids', '$language', '$hobby')";
    echo "$user_id $location $height $age $gender $smokes $drinks $race $has_kids $language $hobby";
    //Execute the statement
    $result = $conn->query($sql);

    if ($result === TRUE) {
        $_SESSION['user_id'] = $user_id; // Set the username session variable
        header("Location: welcome.html"); // Redirect to the welcome page
        exit(); // Terminate script execution after redirection
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}
// Close database connection
$conn->close();
?>
