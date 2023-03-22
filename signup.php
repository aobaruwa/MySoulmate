<?php
session_start(); // Start the session
include('connectionData.txt');
$server="ix.cs.uoregon.edu";
$user="guest"; //aobaruwa";//guest";
$pass="guest";//ltclqsymaobaruwa"; //guest";
$dbname="mySoulmate";
$port="3449";

$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
 or die('Error connecting to MySQL server.');
?>
<?php
// Handle sign-up functionality
// if (!mysqli_select_db($conn, $dbname)) {
//     die("Uh oh, couldn't select database --> $dbname" . $conn->connect_error . ' >');
// }
// Check if the submit button was clicked
if (isset($_POST['submit'])) {
    
    // Retrieve the form data
    $user_id =  mysqli_real_escape_string($conn, $_POST['user_id']);
    $location =  mysqli_real_escape_string($conn, $_POST['location']);
    $religiosity =  mysqli_real_escape_string($conn, $_POST['religiosity']);
    $height =  mysqli_real_escape_string($conn, $_POST['height']);
    $age =  mysqli_real_escape_string($conn, $_POST['age']);
    $gender =  mysqli_real_escape_string($conn, $_POST['gender']);
    $smokes =  mysqli_real_escape_string($conn, $_POST['smokes']);
    $drinks =  mysqli_real_escape_string($conn, $_POST['drinks']);
    $race =  mysqli_real_escape_string($conn, $_POST['race']);
    $has_kids =  mysqli_real_escape_string($conn, $_POST['has_kids']);
    $language =  mysqli_real_escape_string($conn, $_POST['language']);
    $hobby =  mysqli_real_escape_string($conn, $_POST['hobby']);

    $sql = "INSERT INTO users (user_id, location, religiosity, height, age, gender, smokes, drinks, race, has_kids, language, hobby) VALUES ('".$user_id."', '".$location."', '".$religiosity."', '".$height."', '".$age."', '".$gender."', '".$smokes."', '".$drinks."', '".$race."', '".$has_kids."', '".$language."', '".$hobby."')";

    // Execute the statement
    if (mysqli_query($conn, $sql))  {
        echo "sql query ran successfully!";
        $_SESSION['user_id'] = $user_id; // Set the username session variable
        header("Location: welcome.html"); // Redirect to the welcome page
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        mysqli_close($conn);
    }

} else {
    // Render the sign-up page
    include("signup.html");
}



?>
