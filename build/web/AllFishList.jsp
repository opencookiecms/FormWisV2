<%-- 
    Document   : AllFishList
    Created on : May 22, 2020, 12:45:13 AM
    Author     : anaqi
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fl" uri="http://java.sun.com/jsp/jstl/core" %>

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

        <title>Fish List</title>

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
            <a href="/FormWisV2/AddFish.jsp" class="btn btn-primary">Add new fish</a>
            <div class="row">
                <div class="col-md-12 p-3">

                    <table id="myTable" class="display " style="width:100%">
                        <thead>
                            <tr>
                                <th>Fish Id</th>
                                <th>Species Name</th>
                              
                                <th>Family ID</th>
                      
                                <th>Family Name</th>
                                <th>Category ID</th>
                                <th>Category Name</th>
                     
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <fl:forEach items="${AllFishList}" var="f">
                                <tr>
                                    <td>${f.fishID}</td>
                                    <td>${f.scName}</td>
                                 
                             
                                    <td>${f.fmlyID}</td>
                             
                                    <td>${f.fmlyName}</td>
                                    <td>${f.catID}</td>
                                    <td>${f.catName}</td>
                                   
                                    <td>
                                      <a class="btn btn-info" href="fish_id?fishID=${f.fishID}">View</a>  <a class="btn btn-primary" href="fish_view?fishID=${f.fishID}">Edit</a> <a class="btn btn-danger" href="fish_delete?fishID=${f.fishID}">Delete</a>
                                       
                                    </td>
                                </tr>
                            </fl:forEach>
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
   "columnDefs": [
    { "width": "100%", "targets": 1 }
  ]
} );
            });
        </script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->

    </body>
</html>
