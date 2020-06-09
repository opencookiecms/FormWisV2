<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fl" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <%
        //HERE WE GETTING THE ATTRIBUTE DECLARED IN VALIDATE.JSP AND CHECKING IF IT IS NULL, THE USER WILL BE REDIRECTED TO LOGIN PAGE
        String uid = (String) session.getAttribute("user");
       
    %><!-- NOT A VALID USER, IF THE USER TRIES TO EXECUTE LOGGED IN PAGE DIRECTLY, ACCESS IS RESTRICTED -->

    <body>

        <div class="container">
 <jsp:include page="/menu.jsp"/>
            <!-- Main component for a primary marketing message or call to action -->
            <div class="jumbotron" style="background:url(static/bgh.jfif);height: 450px; background-repeat: no-repeat;
                 background-size: cover;">

            </div>


            <div class="row">
                <div class="col-md-8">
                    <h3>Fish Species</h3>
                    <fl:forEach items="${Homepage}" var="f">
                        <div class="card mb-2">
                            <div class="card-body">
                                <h4 class="card-title">${f.scName}</h4>
                                <h6 class="card-subtitle mb-2 text-muted">${f.cmName}</h6>
                                <p class="card-text">${f.fish_desc}</p>
                                <a href="fish_id?fishID=${f.fishID}" class="card-link">More Info</a>

                            </div>
                        </div>
                    </fl:forEach>
                </div>
                <div class="col-md-4">

                    <h3>Total Fish by Location</h3>       
                    <ul class="list-group">

                        <fl:forEach items="${GetCount}" var="f">

                            <li class="list-group-item d-flex justify-content-between align-items-center">

                                <a href="chartbylocation?fish_location=${f.fish_location}">${f.fish_location}</a>



                                <span class="badge badge-primary badge-pill">${f.count} Species fish</span>
                            </li>


                        </fl:forEach>

                    </ul>
                    
                    
                </div>

            </div>



        </div> <!-- /container -->


        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->

        <script>window.jQuery || document.write('<script src="static/js/jquery.min.js"><\/script>')</script>
        <script src="static/js/bootstrap.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script>
    $("#carousel").carousel();
        </script>


    </body>
</html>

