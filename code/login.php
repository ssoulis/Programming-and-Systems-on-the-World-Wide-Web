<?php
    session_start();
    if (isset($_SESSION["SESSION_NAME"])) {

        if ($_SESSION["SESSION_NAME"]=='admin') {
            header("Location: admin.php");
        } else {
        
            header("Location: userpage.php");
        }
    }
    $error =" ";
    if (isset($_POST["login"])) {
        include 'data_con.php';
        
        $name = mysqli_real_escape_string($conn, $_POST["name"]);
        //$password = mysqli_real_escape_string($conn, md5($_POST["password"]));
        $password = mysqli_real_escape_string($conn, ($_POST["password"]));

        $sql = "SELECT * FROM users WHERE name='{$name}' AND password='{$password}'";
        $result = mysqli_query($conn, $sql);
        $count = mysqli_num_rows($result);

        if ($count === 1) {
                $row = mysqli_fetch_assoc($result);
                $_SESSION["SESSION_NAME"] = $name;
                $_SESSION["SESSION_PASS"] = $password;
            if ($_SESSION["SESSION_NAME"]=='admin') {
                header("Location: admin.php");
            } else {
            
                header("Location: userpage.php");
            }
            
        }else {
            echo "<script>alert('Your Login details are incorrect.');</script>";
            $error="Your Login details are incorrect!";
        }
    }


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <title>Login</title>

</head>

<body data-vide-bg="./videos/video_login.mp4">
 
    <div class="wrapper">
    <div class="header">
    <img src="./images/logo.jpg" alt="logo" >
    </div>

        <h2 class="title">Login</h2>

        <div class ="err"><p class = "error"><?php echo $error; ?></p></div>
        <form action="" method="post" class="form">
          
            <div class="input-field">
                <label for="name" class="input-label">Username</label>
                <input type="name" name="name" id="name" class="input" placeholder="Enter your username" required>
            </div>

            <div class="input-field">
                <label for="password" class="input-label">Password</label>
                <input type="password" name="password" id="password" class="input" placeholder="Enter your password" required>
            </div>

            <button class="btn" name="login">Login</button>

            <p>Create Account! <a href="register.php">Register</a>.</p>

        </form>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="./js/jquery.vide.js"></script>


    </div>
</body>
</html>