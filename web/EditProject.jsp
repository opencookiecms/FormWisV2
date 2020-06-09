<%-- 
    Document   : EditProject
    Created on : May 23, 2020, 12:47:45 AM
    Author     : anaqi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="pi" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <title>Project Update</title>

        <!-- Bootstrap core CSS -->
        <link href="http://localhost/css/bootstrap.css" rel="stylesheet">



        <!-- Custom styles for this template -->
        <link href="http://localhost/css/navbar.css" rel="stylesheet">


    </head>

    <body style="background:url(static/bg/bg.jpeg)">

        <div class="container">
 <jsp:include page="/menu.jsp"/>
            <pi:forEach items="${getAllProjectbyID}" var="p">
           <form action ="EditProject" enctype="multipart/form-data" method="post" >
                  <input type="hidden" name="project_id" value="${p.project_id}">
                  <input type="hidden" name="doctemp" value="${p.document}">
            <div class="row">
                <div class="col-md-12">
                    <div class="card border-primary mb-3">
                        <div class="card-header">Please fill in the details of the project</div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                     <div class="form-group">
                                        <label>Project Name</label>
                                        <input type="text" value="${p.project_name}" class="form-control" name="project_name" aria-describedby="emailHelp" placeholder="Your Name">
                                        <small id="emailHelp" class="form-text text-muted">Please insert project name.</small>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                     <div class="form-group">
                                        <label>Project Period</label>
                                        <input type="number" value="${p.project_period}" class="form-control" name="project_period">
                                        <small id="emailHelp" class="form-text text-muted">Please insert day period.</small>
                                    </div>
                                </div>
                            </div>
                            
                             <div class="row">
                                <div class="col-md-12">
                                     <div class="form-group">
                                        <label>Project Location</label>
                                        <input type="text" value="${p.plocation}" class="form-control" name="plocation" aria-describedby="emailHelp" placeholder="Your Email Address">
                                        <small id="emailHelp" class="form-text text-muted">Please insert your email address.</small>
                                    </div>
                                </div>
                             </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Belong to:</label>
                                             <select id="researcher" name="rId" class="form-control">
                                                <option value="${p.rId}">---</option>
                                               <pi:forEach items="${GetR}" var="p">
                                                <option value="${p.ID}">${p.name}</option>
                                               </pi:forEach>
                                             </select>                          
                                            <small id="emailHelp" class="form-text text-muted">This project belong to ?.</small>
                                        </div>
                                    </div>
                                </div>
                            <div class="row">
                                  <div class="col-md-6">
                                <div class="form-group">
                              
                                    <label>Document:- ${p.document} </label>
                                    <input type="file" name="document" class="form-control">
                                </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-1">
                                    <button type="submit" name="submit" class="btn btn-success">Save</button>
                                </div>
                                <div class="col-md-1">
                                    <button type="reset" name="reset" class="btn btn-danger">Reset</button>
                                </div>
                                
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
              </form>
           </pi:forEach>



        </div> <!-- /container -->


        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->

        <script>window.jQuery || document.write('<script src="static/js/jquery.min.js"><\/script>')</script>
        <script src="static/js/bootstrap.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->

    </body>
</html>