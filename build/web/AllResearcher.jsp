<%-- 
    Document   : AllResearcher
    Created on : May 22, 2020, 11:59:26 PM
    Author     : anaqi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="rl" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                 <th>R.Id</th>
                <th>Name</th>
                <th>Institute</th>
                <th>Field</th>
                <th>Email</th>
                <th>Phone No</th>
                <th>Username</th>
                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        <rl:forEach items="${AllResearcher}" var="f">
            <tr>
               <td>${f.ID}</td>
               <td>${f.name}</td>
               <td>${f.institute}</td>
               <td>${f.field}</td>
              <td>${f.email}</td>
              <td>${f.phoneNo}</td>
              <td>${f.username}</td>
               <td>
                   <a href="researcher_view?ID=${f.ID}">Edit</a>
                   <a href="researcher_delete?ID=${f.ID}">Delete</a>
               </td>
            </tr>
            </rl:forEach>
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
                $('#myTable').dataTable( {
 
} );
            });
        </script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->

    </body>
</html>