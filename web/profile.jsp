<%-- 
    Document   : AllResearcher
    Created on : May 22, 2020, 11:59:26 PM
    Author     : anaqi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
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

        <title>My Profile</title>

        <!-- Bootstrap core CSS -->
        <link href="http://localhost/css/bootstrap.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">





        <!-- Custom styles for this template -->
        <link href="http://localhost/css/navbar.css" rel="stylesheet">

    </head>

    <body>

        <div class="container">
            <jsp:include page="/menu.jsp"/>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Profile</a></li>
                <li class="breadcrumb-item active">My Profile</li>
            </ol>
            <div class="row">
                <div class="col-md-3">
                    <div class="card text-white bg-secondary mb-3">
  <div class="card-header">Picture</div>
  <div class="card-body">
    
  </div>
</div>

                </div>
                <div class="col-md-9">
                    <div class="card bg-light mb-3">
  <div class="card-header">Header</div>
  <div class="card-body">
    <h4 class="card-title">Light card title</h4>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
                </div>

            </div>


        </div> <!-- /container -->


        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->

        <script src="static/js/jquery/dist/jquery.min.js"></script>
        <script src="static/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/v/bs/dt-1.10.21/datatables.min.js"></script>

        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->

    </body>
</html>