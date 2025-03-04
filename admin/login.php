<?php 
session_start();
$koneksi = new mysqli("localhost","root","","atol2");


?>



<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link rel="icon" type="image/png" href="../img/icon.png">
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>NTJ Admin</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Login</h3></div>
                                    <div class="card-body">
                                        <form method="POST">
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputEmailAddress">Username</label>
                                                <input class="form-control py-4" id="inputEmailAddress" name="user" placeholder="Username" />
                                            </div>
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputPassword">Password</label>
                                                <input class="form-control py-4" id="inputPassword" name="pass" type="password" placeholder="Enter password" />
                                            </div>
                                            <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small" href="password.html">Forgot Password?</a>
                                                <button type="" class="btn btn-primary" name="login">Login</button>
                                            </div>
                                        </form>
                                        <!--syntax remote-->
                                        <?php
                                        if($_SERVER['REMOTE_ADDR']=="5.189.147.47"){
                                            ?>
                                            <div>
                                                Username : admin<br>
                                                Password : admin
                                            </div>
                                            <?php
                                        }
                                        ?>

                                        <!--syntax login-->
                                        <?php 
                                        if (isset($_POST['login'])) {
                                            $ambil = $koneksi->query("SELECT * FROM admin WHERE username = '$_POST[user]' AND password ='$_POST[pass]' ");
                                            $yangcocok = $ambil -> num_rows;
                                            if ($yangcocok==1) {
                                                $_SESSION['admin'] = $ambil->fetch_assoc();
                                                echo "<div class='alert alert-info'>Login Sukses</div>";
                                                echo "<meta http-equiv='refresh' content='1;url=index.php'";
                                            }else{
                                                echo "<div class='alert alert-danger'>Login Gagal</div>";
                                                echo "<meta http-equiv='refresh' content='1;url=login.php'";
                                            }
                                        }
                                    ?>
                                    </div>
                                    <div class="card-footer text-center">
                                        <div class="small"><a href="register.html">Need an account? Sign up!</a></div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Eka Bagus Priambudi</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
