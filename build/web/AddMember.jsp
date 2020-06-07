<%-- 
    Document   : AddResearcher
    Created on : May 22, 2020, 11:38:41 PM
    Author     : anaqi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="rl" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <title>dfdf</title>

        <!-- Bootstrap core CSS -->
        <link href="http://localhost/css/bootstrap.css" rel="stylesheet">



        <!-- Custom styles for this template -->
        <link href="http://localhost/css/navbar.css" rel="stylesheet">


    </head>

    <body>

        <div class="container">
              <jsp:include page="/menu.jsp"/>
          
            <form action ="AddMemberMember" method="post" >
            <div class="row">
                <div class="col-md-12">
                    <div class="card border-primary mb-3">
                        <div class="card-header">Please fill in you member of project information</div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                     <div class="form-group">
                                        <label>Name</label>
                                        <input type="text" class="form-control" name="membername" aria-describedby="emailHelp" placeholder="Your Name">
                                        <small id="emailHelp" class="form-text text-muted">Please insert your name.</small>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                     <div class="form-group">
                                        <label>Institute:</label>
                                        <select id="Institute" name="institute" class="form-control">
                                        <option value="Please select institute">Please select institute</option>
                                        <option value="FRI Batu Maung">FRI Batu Maung</option>
                                        <option value="FRI Gelang Patah">FRI Gelang Patah</option>
                                        <option value="FRI Pulau Sayak">FRI Pulau Sayak</option>
                                        <option value="AIMST University">AIMST University</option>
                                        <option value="Institut Sumber Marin Asia Tenggara">Institut Sumber Marin Asia Tenggara</option>
                                        <option value="Universiti Putra Malaysia">Universiti Putra Malaysia</option>
                                        <option value="Universiti Malaysia Sabah">Universiti Malaysia Sabah</option>
                                        <option value="Universiti Malaysia Terengganu">Universiti Malaysia Terengganu</option>
                                        <option value="UCSI University">UCSI University</option>
                                        </select>
                                        <small id="emailHelp" class="form-text text-muted">Please insert your name.</small>
                                    </div>
                                </div>
                            </div>
                            
                             <div class="row">
                                <div class="col-md-12">
                                     <div class="form-group">
                                        <label>Phone Number</label>
                                        <input type="text" class="form-control" name="phoneNo" aria-describedby="emailHelp" placeholder="Your Email Address">
                                        <small id="emailHelp" class="form-text text-muted">Please insert your email address.</small>
                                    </div>
                                </div>
                             </div>
                             <div class="row">
                                <div class="col-md-12">
                                     <div class="form-group">
                                        <label>Email</label>
                                        <input type="text" class="form-control" name="email" aria-describedby="emailHelp" placeholder="Your Email Address">
                                        <small id="emailHelp" class="form-text text-muted">Please insert your email address.</small>
                                    </div>
                                </div>
                             </div>
                             <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Project Related:</label>
                                             <select id="researcher" name="project" class="form-control">
                                                <option value="">Please assign Project</option>
                                               <rl:forEach items="${GetProject}" var="p">
                                                <option value="${p.project_id}">${p.project_name}</option>
                                               </rl:forEach>
                                             </select>                          
                                            <small id="emailHelp" class="form-text text-muted">Please insert fish common name.</small>
                                        </div>
                                    </div>
                                </div>
                            <div class="row">
                                <div class="col-md-1">
                                    <button type="submit" name="submit" class="btn btn-success">Register</button>
                                </div>
                                <div class="col-md-1">
                                    <button type="reset" name="reset" class="btn btn-danger">Reset</button>
                                </div>
                                <div class="col-md-10">
                                    <span>Already registered!!</span> <a href="index.html">Login Here</a>
                                </div>
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
              </form>



        </div> <!-- /container -->


        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->

        <script>window.jQuery || document.write('<script src="static/js/jquery.min.js"><\/script>')</script>
        <script src="static/js/bootstrap.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->

    </body>
</html>