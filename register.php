<?php

require 'config/db_connect.php';

session_start();

if (isset($_SESSION['login'])) {
    header('Location: home.php');
    exit;
}

if (isset($_POST['register'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm_password'];
    $role = $_POST['role'];

    // Validate if passwords match
    if ($password != $confirm_password) {
        echo "
            <script>
                alert('Passwords do not match!');
                window.location.href='register.php';
            </script>
        ";
        exit;
    }

    // Check if user already exists
    $sql = "SELECT * FROM login WHERE email='$email'";
    $cek_user = mysqli_query($conn, $sql);

    if (mysqli_num_rows($cek_user) > 0) {
        echo "
            <script>
                alert('Email already exists!');
                window.location.href='register.php';
            </script>
        ";
        exit;
    }

    // Insert new user into the database
    $sql = "INSERT INTO login (email, password, role) VALUES ('$email', '$password', '$role')";
    $register_user = mysqli_query($conn, $sql);

    if ($register_user) {
        echo "
            <script>
                alert('Registration successful!');
                window.location.href='login.php';
            </script>
        ";
    } else {
        echo "
            <script>
                alert('Registration failed! Please try again.');
                window.location.href='register.php';
            </script>
        ";
    }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Aplikasi Management Stok Barang" />
    <meta name="keywords" content="Management Stock, Stock App, Barang" />
    <meta name="author" content="Alan Nuari" />
    <link rel="shortcut icon" href="./images/icon.png" type="image/x-icon" />
    <title>Register</title>
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body style="background-color: aliceblue">
    <div id="layoutAuthentication" style="height: 100vh" class="flex-row align-items-center">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container">
                    <div class="row justify-content-center align-items-center">
                        <div class="col-lg-5">
                            <div class="card border-0 shadow-sm" style="border-radius: 10px; background-color: cornflowerblue">
                                <div class="card-header bg-dark" style="border-radius: 10px 10px 0 0">
                                    <h3 class="text-center font-weight-light text-white my-3">Stock App Register</h3>
                                </div>
                                <div class="card-body">
                                    <form method="POST">
                                        <div class="form-floating mb-3">
                                            <input class="form-control" name="email" id="inputEmail" type="email" placeholder="name@example.com" />
                                            <label for="inputEmail">Email address</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input class="form-control" name="password" id="inputPassword" type="password" placeholder="Password" />
                                            <label for="inputPassword">Password</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input class="form-control" name="confirm_password" id="inputConfirmPassword" type="password" placeholder="Confirm Password" />
                                            <label for="inputConfirmPassword">Confirm Password</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <select class="form-select" name="role" id="inputRole">
                                                <option value="user">User</option>
                                                <option value="admin">Admin</option>
                                            </select>
                                            <label for="inputRole">Role</label>
                                        </div>
                                        <div class="mt-4 mb-0 text-center rounded-full">
                                            <button class="btn btn-dark " style="width: 100%; border-radius: 10px" name="register">Register</button>
                                        </div>
                                    </form>
                                </div>
                                <div class="card-footer text-center py-3">
                                    <div class="small"><a href="login.php">Already have an account? Login!</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
</body>

</html>