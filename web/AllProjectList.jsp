<%-- 
    Document   : AllProjectList
    Created on : May 21, 2020, 11:37:37 PM
    Author     : anaqi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="pr" uri="http://java.sun.com/jsp/jstl/core" %>

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
                <li class="breadcrumb-item"><a href="#">Fish</a></li>
                <li class="breadcrumb-item active">Fish List</li>
            </ol>
            <div class="row">
                <div class="col-md-12 p-3">

                    <table id="myTable" class="display " style="width:100%">
                        <thead>
                            <tr>
                                <th>Project Id</th>
                                <th>Project Name</th>
                                <th>Project Period</th>
                                <th>Location</th>
                                <th>Document</th>
                                <th>belong to</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <pr:forEach items="${AllProjectList}" var="p">
                                <tr>
                                    <td>${p.project_id}</td>
                                    <td>${p.project_name}</td>
                                    <td>${p.project_period} days</td>
                                    <td>${p.plocation}</td>
                                    <td>${p.document}</td>
                                    <td>${p.name}</td>
                                    <td>
                                        <a href="project_view_id?project_id=${p.project_id}">View</a>
                                        <a href="project_view?project_id=${p.project_id}">Edit</a>
                                        <a href="project_delete?project_id=${p.project_id}">Delete</a>
                                    </td>
                                </tr>
                            </pr:forEach>
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
                        {"width": "16%", "targets": 6}
                    ]
                });
            });
        </script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->

    </body>
</html>