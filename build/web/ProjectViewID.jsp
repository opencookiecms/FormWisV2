<%-- 
    Document   : ProjectViewID
    Created on : Jun 1, 2020, 9:27:38 PM
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

        <title>Navbar Template for Bootstrap</title>

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
                <li class="breadcrumb-item"><a href="homepage.jsp">Back</a></li>
                <li class="breadcrumb-item active">Fish List</li>
            </ol>

            <div class="row">
                <div class="col-md-12">
                    <pi:forEach items="${getProjectID}" var="p">
                        <div class="list-group">
                            <a href="#" class="list-group-item list-group-item-action flex-column align-items-start active">
                                <div class="d-flex w-100 justify-content-between">
                                    <h5 class="mb-1">${p.project_name}</h5>
                                </div>
                            </a>
                            <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                                <div class="d-flex w-100 justify-content-between">
                                    <h5 class="mb-1">Project Period : ${p.project_period} days</h5>
                                    
                                </div>
                                <p class="mb-1">Researcher : ${p.name}.</p>
                              
                            </a>
                        </div>
                    </pi:forEach>

                </div>
            </div>
            <div class="row">
                 
                <div class="col-md-12 mt-4">
                   <h3>Member List</h3> <a href="AddMember">Add Member</a>
                    <table class="table table-hover">
                        <thead>
                            <tr class="table-success">
                                <th>Name</th>
                                <th>Institute</th>

                                <th>Email</th>
                                <th>Phone No</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <pi:forEach items="${getMemberID}" var="s">
                                <tr>
                                    <td>${s.membername}</td>
                                    <td>${s.institute}</td>
                                    <td>${s.phoneNo}</td>
                                    <td>${s.email}</td>
                                    

                                </tr>
                            </pi:forEach>
                        </tbody>
                    </table>
                </div>

            </div>


        </div> <!-- /container -->


        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->

        <script src="static/js/jquery/dist/jquery.min.js"></script>
        <script src="static/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/v/bs/dt-1.10.21/datatables.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#myTable').dataTable({
                    "columnDefs": [
                        {"width": "0%", "targets": 0}
                    ]
                });
            });
        </script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->

    </body>
</html>