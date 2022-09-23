<?php
    session_start();
    if (isset($_SESSION["SESSION_NAME"])) {
        header("Location: userpage.php");
    }
    $error =" ";
    if (isset($_POST["submit"])) {
        include 'data_con.php';
        $name = mysqli_real_escape_string($conn, $_POST["name"]);
        $email = mysqli_real_escape_string($conn, $_POST["email"]);
        // me sha kai md5 den einai panta secure opote pame stin lusi me hash-salt 
        // $password = mysqli_real_escape_string($conn, md5($_POST["password"]));
       // $cpassword = mysqli_real_escape_string($conn, md5($_POST["cpassword"]));
       /* 
       $options = ['salt' => your_custom_function_for_salt(), 
        'cost' => 12 // the default cost is 10];
        $hash = password_hash($your_password, PASSWORD_DEFAULT, $options);
        */ 
        $password = mysqli_real_escape_string($conn, ($_POST["password"]));
        $cpassword = mysqli_real_escape_string($conn, ($_POST["cpassword"]));

        if (mysqli_num_rows(mysqli_query($conn, "SELECT * FROM users WHERE email='{$email}'")) > 0) {
            /*echo "<script>alert('{$email} - This email has already taken.');</script>";*/
            $error="This emailis already taken!";
        }else if (mysqli_num_rows(mysqli_query($conn, "SELECT * FROM users WHERE name='{$name}'")) > 0) {
                /*echo "<script>alert('{$name} - This name has already taken.');</script>";*/
                $error="This name is already taken!";
        }else if(!isset($_POST['password']) || !preg_match('/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[\~?!@#\$%\^&\*])(?=.{8,})/', $_POST['password'])){ 
            $error="Password must have at least 8 characters,
           At least one upper case Letter,
           At least one number and one symbol (for example !@#$%).";
        }else {
            if ($password === $cpassword) {
                $sql = "INSERT INTO users (name, email, password) VALUES ('{$name}', '{$email}', '{$password}')";
                $result = mysqli_query($conn, $sql);

                if ($result) {
                    header("Location: login.php");
                }else {
                    echo "<script>Error: ".$sql.mysqli_error($conn)."</script>";
                }
            }else {
                /*echo "<script>alert('Password and confirm password do not match.');</script>";*/
                $error ="Password and confirm password do not match!";
            }
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
    <title>Register</title>
</head>
<body data-vide-bg="./videos/video_login.mp4">
    <div class="wrapper">
        
    <div class="header">
    <img src="./images/logo.jpg" alt="logo" >

    <div class="wrapper">

        <h2 class="title">Register</h2>

        <div class ="err"><p class = "error"><?php echo $error; ?></p></div>
        <form action="" method="post" class="form">
            
            <div class="input-field">
                <label for="name" class="input-label">Username</label>
                <input type="name" name="name" id="name" class="input" placeholder="Enter your Username" required>
            </div>
            <div class="input-field">
                <label for="email" class="input-label">Email</label>
                <input type="email" name="email" id="email" class="input" placeholder="Enter your email" required>
            </div>
            <div class="input-field">
                <label for="password" class="input-label">Password</label>
                <input type="password" name="password" id="password" class="input" placeholder="Enter your password" required>
            </div>
            <div class="input-field">
                <label for="cpassword" class="input-label">Confirm Password</label>
                <input type="password" name="cpassword" id="cpassword" class="input" placeholder="Confirm your password" required>
            </div>
            
            <button class="btn" name="submit">Register</button>
            <p>You already have an account? <a href="login.php">Login</a>.</p>
            
        </form>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="./js/jquery.vide.js"></script>


    </div>
    
</body>
</html>