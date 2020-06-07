<%-- 
    Document   : EditResearcher
    Created on : May 24, 2020, 3:09:13 AM
    Author     : anaqi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fi" uri="http://java.sun.com/jsp/jstl/core" %>
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
 <jsp:include page="/menu.jsp"/>
            <fi:forEach items="${getResearcherbyID}" var="p">
                   <form action ="EditReseacher" enctype="multipart/form-data" method="post" >
                    <input type="hidden" name="ID" value="${p.ID}">
            <div class="row">
                <div class="col-md-12">
                    <div class="card border-primary mb-3">
                        <div class="card-header">Please fill in you personal information</div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                     <div class="form-group">
                                        <label>Your Name</label>
                                        <input type="text"  value="${p.name}" class="form-control" name="name" aria-describedby="emailHelp" placeholder="Your Name">
                                        <small id="emailHelp" class="form-text text-muted">Please insert your name.</small>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                     <div class="form-group">
                                        <label>Your Email</label>
                                        <input type="text" class="form-control" value="${p.email}" name="email" aria-describedby="emailHelp" placeholder="Your Email Address">
                                        <small id="emailHelp" class="form-text text-muted">Please insert your email address.</small>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                     <div class="form-group">
                                        <label>Institute:</label>
                                        <select id="Institute" name="institute" class="form-control">
                                             <option value="${p.institute}">${p.institute}</option>
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
                                <div class="col-md-6">
                                     <div class="form-group">
                                        <label>Field:</label>
                                        <select id="field" name="field" class="form-control">
                                               <option value="${p.field}">${p.field}</option>
                                        <option value="Please select field">Please select field</option>
                                        <option value="Aquaculture">Aquaculture</option>
                                        <option value="Biostatistic">Biostatistic</option>
                                        <option value="Fisheries">Fisheries</option>
                                        <option value="Marine Science">Marine Science</option>
                                        <option value="Maritime Science">Maritime Science</option>
                                        <option value="Verterinar">Verterinar</option>
                                        <option value="Zoology">Zoology</option>    
                                        </select>
                                        <small id="emailHelp" class="form-text text-muted">Please insert your name.</small>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                     <div class="form-group">
                                        <label>Phone Number</label>
                                        <input type="text" class="form-control"  value="${p.phoneNo}"  name="phoneNo"  placeholder="Phone">
                                        <small id="emailHelp" class="form-text text-muted">Please insert your phone number.</small>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Username</label>
                                        <input type="text" value="${p.username}"  class="form-control" name="username" aria-describedby="emailHelp" placeholder="Enter Username">
                                        <small id="emailHelp" class="form-text text-muted">please insert you username.</small>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="password" value="${p.password}"  class="form-control" name="password" aria-describedby="emailHelp" placeholder="Enter Password">
                                        <small id="emailHelp" class="form-text text-muted">enter your password.</small>
                                    </div>
                                </div>

                            </div>
                             <div class="row">
                                  <div class="col-md-6">
                                <div class="form-group">
                              
                                    <label>Profile Image :- ${p.profile_pic}</label>
                                    <input type="file" name="profile_pic" class="form-control">
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
              </fi:forEach>



        </div> <!-- /container -->


        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->

        <script>window.jQuery || document.write('<script src="static/js/jquery.min.js"><\/script>')</script>
        <script src="static/js/bootstrap.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->

    </body>
</html>