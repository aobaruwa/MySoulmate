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
$user_id = $_SESSION['user_id'];


if (isset($_POST['action'])) {
    $action = $_POST['action'];
   
    switch ($action) {
        case 'explore':
            // code to handle "Explore" button action
            $query = "SELECT DISTINCT user_id, location, religiosity, height, age, 
                                    gender, smokes, drinks, race, has_kids, language, hobby
                    FROM users 
                    WHERE user_id != '".$user_id."' AND 
                    gender != (SELECT gender FROM users WHERE user_id = '".$user_id."')
                    ORDER BY location";

            $result = mysqli_query($conn, $query)
            or die(mysqli_error($conn));
  
            echo "Here are other poeple on MySoulmate, User $user_id !";
            // pretty print the results using var_dump()
            print "<pre>";
            while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
              {
                print "\n";
                print "$row[user_id]  $row[location]  $row[religiosity], $row[height], $row[age], $row[gender], $row[smokes], $row[drinks], $row[race], $row[has_kids], $row[language], $row[hobby]";
              }
            print "</pre>";
            
            mysqli_free_result($result);
            break;
        case 'view_matches':
            echo "Here are the people you have matched, User $user_id !";
            // code to handle "View Matches" button action
            $query = "SELECT DISTINCT user_id, location, religiosity, height, age, 
                                    gender, smokes, drinks, race, has_kids, language, hobby
                    FROM users
                    WHERE user_id IN (SELECT user_id2 from matches WHERE user_id1 = '".$user_id."')
                    ORDER BY location";
            $result = mysqli_query($conn, $query)
            or die(mysqli_error($conn));
  
            
            // pretty print the results using var_dump()
            print "<pre>";
            while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
              {
                print "\n";
                print "$row[user_id]  $row[location]  $row[religiosity], $row[height], $row[age], $row[gender], $row[smokes], $row[drinks], $row[race], $row[has_kids], $row[language], $row[hobby]";
              }
            print "</pre>";
            
            mysqli_free_result($result);
            break;
        case 'view_likes':
            // code to handle "View Likes" button action
            echo "Here are the people you've liked so far, User $user_id !";
            // pretty print the results using var_dump()
            $query = "SELECT DISTINCT user_id, location, religiosity, height, age, 
                                    gender, smokes, drinks, race, has_kids, language, hobby
                    FROM users
                    WHERE user_id IN (SELECT user_id2 from likes WHERE user_id1 = '".$user_id."')
                    ORDER BY location";

            $result = mysqli_query($conn, $query)
            or die(mysqli_error($conn));
  
            print "<pre>";
            while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
              {
                print "\n";
                print "$row[user_id]  $row[location]  $row[religiosity], $row[height], $row[age], $row[gender], $row[smokes], $row[drinks], $row[race], $row[has_kids], $row[language], $row[hobby]";
              }
            print "</pre>";
            
        
            break;
        case 'view_passes':
            echo "Here are the people you passed so far, User $user_id !";
            // code to handle "View Passes" button action
            $query = "SELECT DISTINCT user_id, location, religiosity, height, age, 
                                    gender, smokes, drinks, race, has_kids, language, hobby
                    FROM users
                    WHERE user_id IN (SELECT user_id2 from passes WHERE user_id1 = '".$user_id."')
                    ORDER BY location";

            $result = mysqli_query($conn, $query)
            or die(mysqli_error($conn));
            print "<pre>";
            while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
            {
            print "\n";
            print "$row[user_id]  $row[location]  $row[religiosity], $row[height], $row[age], $row[gender], $row[smokes], $row[drinks], $row[race], $row[has_kids], $row[language], $row[hobby]";
            }
            print "</pre>";
            break;
        case 'view_preferences':
            echo "Here are the people that match your preferences, User $user_id !";
            // code to handle "View Preferences" button action
            $query = "SELECT u.*
                        FROM users u
                        INNER JOIN preferences p
                        ON u.location = p.location
                        AND u.language = p.language
                        AND u.gender = p.gender
                        -- AND u.race = p.race
                        WHERE p.user_id = '".$user_id."'" ;
         
            $result = mysqli_query($conn, $query)
            or die(mysqli_error($conn));
            print "<pre>";
            while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
            {
            print "\n";
            print "$row[user_id]  $row[location]  $row[religiosity], $row[height], $row[age], $row[gender], $row[smokes], $row[drinks], $row[race], $row[has_kids], $row[language], $row[hobby]";
            }
            print "</pre>";


            break;
        case 'edit_preferences':
            // code to handle "Edit Preferences" button action
            header("Location: preferences.html"); // Redirect to the welcome page
            break;
        default:
            // code to handle invalid button option
            break;
    }
}
?>