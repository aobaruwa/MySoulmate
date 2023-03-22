<?php
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
// Process form data and insert into preferences table
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $user_id = $_POST["user_id"];
    $location = $_POST["location"];
    $religiosity = $_POST["religiosity"];
    $height = $_POST["height"];
    $age = $_POST["age"];
    $gender = $_POST["gender"];
    $smokes = $_POST["smokes"];
    $drinks = $_POST["drinks"];
    $race = $_POST["race"];
    $has_kids = $_POST["has_kids"];
    $language = $_POST["language"];
    $hobby = $_POST["hobby"];

    $sql = "INSERT INTO preferences (user_id, location, religiosity, height, age, gender, smokes, drinks, race, has_kids, language, hobby)
            VALUES ('$user_id', '$location', '$religiosity', '$height', '$age', '$gender', '$smokes', '$drinks', '$race', '$has_kids', '$language', '$hobby')";

    if ($conn->query($sql) === TRUE) {
        echo "New record created successfully";
        header("Location: welcome.html");  //Redirect to the welcome page
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Close database connection
$conn->close();
?>
