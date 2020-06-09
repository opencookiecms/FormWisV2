<%-- 
    Document   : AddFish
    Created on : May 22, 2020, 11:02:37 PM
    Author     : anaqi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="vf" uri="http://java.sun.com/jsp/jstl/core" %>

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

        <title>View Fish</title>

        <!-- Bootstrap core CSS -->
        <link href="http://localhost/css/bootstrap.css" rel="stylesheet">

        <script src="https://cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>

        <!-- Custom styles for this template -->
        <link href="http://localhost/css/navbar.css" rel="stylesheet">
        <style>
            /* Always set the map height explicitly to define the size of the div
             * element that contains the map. */
            #map {
                height: 100%;
                width:100%;
            }
            /* Optional: Makes the sample page fill the window. */

        </style>

    </head>

    <body>

        <div class="container">
            <jsp:include page="/menu.jsp"/>                          

            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="homepage.jsp">Back</a></li>
                <li class="breadcrumb-item active">Fish</li>
            </ol>

            <div class="row">

                <div class="col-sm-8 blog-main">
                    <vf:forEach items="${getFishbyID}" var="p">
                        <div class="blog-post">
                            <h2 class="blog-post-title">${p.scName}</h2>
                            <p class="blog-post-meta">${p.cmName}</p>

                            <p><img src="http://localhost/assets/img/${p.fish_pic}" alt="fish" width="100%" height="400"></p>
                            <hr>
                            <p>${p.fish_desc}</p>
                            <p><h2>Others</h2></p>
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">Type</th>
                                        <th scope="col">Descriptions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">Order Name</th>
                                        <td>${p.ordName}</td>


                                    </tr>
                                    <tr>
                                        <th scope="row">Family  Name</th>
                                        <td>${p.fmlyName}</td>


                                    </tr>
                                    <tr>
                                        <th scope="row">Category Name</th>
                                        <td>${p.catName}</td>


                                    </tr>
                                </tbody>


                            </table>
                            <p><h2>Location</h2></p>

                            <div style="height: 490px; position:relative; overflow:hidden">
                                <div id="map"></div>
                            </div>
                            <form>
                                <input type="hidden" id="lat" value="${p.fish_lat}" size="50" placeholder="latitude" class="form-control">
                                <input type="hidden" id="long" value="${p.fish_long}" size="50" placeholder="longitude" class="form-control">
                            </form>



                        </div><!-- /.blog-post -->




                    </vf:forEach>
                </div><!-- /.blog-main -->

                <div class="col-sm-3 col-sm-offset-1 blog-sidebar">
                    <div class="sidebar-module sidebar-module-inset">
                        <h4>About</h4>
                        <p>Fishes of Malaysia Water Information System (FOMWIS) is the online database to provide an information about fish species. 
                            All researchers around Malaysia can be connected through this online database.</p>
                    </div>

                </div><!-- /.blog-sidebar -->

            </div><!-- /.row -->



        </div> <!-- /container -->


        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->

        <script>window.jQuery || document.write('<script src="static/js/jquery.min.js"><\/script>')</script>
        <script src="static/js/bootstrap.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script>
// Initialize and add the map
            function initMap() {

                var getLat = document.getElementById("lat").value;
                var getLong = document.getElementById("long").value;
                var latlng = new google.maps.LatLng(getLat, getLong);
                var map = new google.maps.Map(document.getElementById('map'), {
                    center: latlng,
                    zoom: 10,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                });
                var marker = new google.maps.Marker({
                    position: latlng,
                    map: map,
                    title: 'Set lat/lon values for this property',
                    draggable: true
                });

                google.maps.event.addListener(
                        marker,
                        'drag',
                        function () {
                            document.getElementById('lat').value = marker.position.lat().toFixed(6);
                            document.getElementById('long').value = marker.position.lng().toFixed(6);


                        }
                );
            }
        </script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBZqmOsvliGb1y1mUgkHjLiThl5yYRodsE&callback=initMap" async defer></script>

    </body>
</html>