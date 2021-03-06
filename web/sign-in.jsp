<%-- 
    Document   : sign-in
    Created on : Mar 8, 2022, 10:29:09 AM
    Author     : HuuTrinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="fonts/icomoon/style.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- Style -->
        <link rel="stylesheet" href="css/style.css">

        <title>TVShop</title>
    </head>
    <body>
        <div class="content">
            <div class="container" style="padding: 50px">
                <div class="row">
                    <div class="col-md-6 order-md-2">
                        <img src="images/undraw_file_sync_ot38.svg" alt="Image" class="img-fluid">
                    </div>
                    <div class="col-md-6 contents">
                        <div class="row justify-content-center">
                            <div class="col-md-8">
                                <div class="mb-4">
                                    <h3>Sign In to <strong>TVShop</strong></h3>
                                    <p class="mb-4">Welcome to our fresh vegetable shop.</p>
                                    
                                    <span class="bg-danger text-white">${requestScope.mess}</span>
                                </div>
                                <form action="signin" method="post">
                                    <div class="form-group first">
                                        <label for="username">Username</label>
                                        <input name="username" type="text" class="form-control" id="username" required>
                                        
                                    </div>
                                    <div class="form-group last mb-4">
                                        <label for="password">Password</label>
                                        <input name="password" type="password" class="form-control" id="password" required>

                                    </div>

                                    <div class="d-flex mb-5 align-items-center">
                                        <label class="control control--checkbox mb-0"><a href="signup">Sign Up</a></label>
                                        <span class="ml-auto"><a href="#" class="forgot-pass">Forgot Password</a></span> 
                                    </div>

                                    <input type="submit" value="Sign In" class="btn btn-block btn-primary">

                                </form>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>


        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
