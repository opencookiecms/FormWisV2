
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">
        <link rel="canonical" href="https://getbootstrap.com/docs/3.4/examples/navbar/">

        <title>Navbar Template for Bootstrap</title>

        <!-- Bootstrap core CSS -->
        <link href="http://localhost/css/bootstrap.css" rel="stylesheet">



        <!-- Custom styles for this template -->
        <link href="http://localhost/css/navbar.css" rel="stylesheet">


    </head>

    <body style="background:url(static/bg/bg.jpeg)">

        <div class="container">





            <!-- Main component for a primary marketing message or call to action -->
            <div class="jumbotron bg-white">
                <h2 class="display-3">Fish Information System of Malaysia Water</h2>
                <a href="/FormWisV2/homepage" class="btn btn-primary">HOME</a>
                <hr class="my-4">
                <p>Not yet become members, come and join us....</p>
                <p class="lead">
                    <a class="btn btn-primary btn-lg" href="AddResearcher.jsp" role="button">Register</a>
                </p>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="card border-primary mb-3">
                        <div class="card-header">Login</div>
                        <div class="card-body">
                            <form action="controller/validator.jsp" method="post">
                            <div class="row">
                               
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Username</label>
                                            <input type="text" class="form-control" name="username" aria-describedby="emailHelp" placeholder="Enter Username">
                                            <small id="emailHelp" class="form-text text-muted">Please insert you username.</small>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input type="password" class="form-control" name="password" aria-describedby="emailHelp" placeholder="Enter Password">
                                            <small id="emailHelp" class="form-text text-muted">Please enter your password.</small>
                                        </div>
                                    </div>
                               
                              
                            </div>
                                 <div class="row">
                                          <div class="col-md-4">
                                        <div class="form-group">
                                            <button type="submit" name="submit" class="btn btn-success">Login</button>
                                        </div>
                                    </div>

                                 </div>
                              </form>


                        </div>

                    </div> 
                </div>
            </div>



        </div> <!-- /container -->


        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->

        <script>window.jQuery || document.write('<script src="static/js/jquery.min.js"><\/script>')</script>
        <script src="static/js/bootstrap.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->

    </body>
</html>

