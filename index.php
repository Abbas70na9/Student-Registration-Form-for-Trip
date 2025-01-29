<?php
$message = ''; 

if (isset($_POST['submit'])) {
    $server = "localhost";
    $username = "root";
    $password = "";
    $dbname = "trip";

    $con = mysqli_connect($server, $username, $password, $dbname) or die('Connection Failed');

    // Form data
    $name = $_POST['name'];
    $age = $_POST['age'];
    $gender = $_POST['gender'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $desc = $_POST['desc'];

    // SQL query to insert data into the database
    $sql = "INSERT INTO student (Name, Age, Gender, Email, Phone, Other, dt) 
            VALUES ('$name', '$age', '$gender', '$email', '$phone', '$desc', current_timestamp())";

    $result = mysqli_query($con, $sql);

    // Check if the query runs successfully
    if ($result) {
        $message = "<p style='color: green;'>Data Submitted successfully!</p>";
    } else {
        $message = "<p style='color: red;'>Error: " . mysqli_error($con) . "</p>";
    }

    // Close the connection
    $con->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Travel Form</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>"Gilgit Baltistan Tour Participation Form"</h1>
        <p>Enter your details and Submit this Form to Confirm your participation in this trip</p>

        <!-- Display message after form submission -->
        <?php if (!empty($message)) {
            echo $message;
        } ?>

        <form action="index.php" method="POST">
            <input type="text" name="name" id="name" placeholder="Enter your name" required>
            <input type="text" name="age" id="age" placeholder="Enter your Age" required>
            <input type="text" name="gender" id="gender" placeholder="Enter your Gender" required>
            <input type="email" name="email" id="email" placeholder="Enter your Email" required>
            <input type="text" name="phone" id="phone" placeholder="Enter your Phone Number" required>
            <textarea name="desc" id="desc" cols="30" rows="10" placeholder="Enter any other information here" required></textarea>
            <button class="btn" name="submit">Submit</button>
           
        </form>
    </div>

    <script src="script.js"></script>
</body>
</html>
