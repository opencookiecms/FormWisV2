<%-- 
    Document   : AddFish
    Created on : May 22, 2020, 11:02:37 PM
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

        <title>Navbar Template for Bootstrap</title>

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
    <%
        //HERE WE GETTING THE ATTRIBUTE DECLARED IN VALIDATE.JSP AND CHECKING IF IT IS NULL, THE USER WILL BE REDIRECTED TO LOGIN PAGE
        String uid = (String) session.getAttribute("user");

    %><!-- NOT A VALID USER, IF THE USER TRIES TO EXECUTE LOGGED IN PAGE DIRECTLY, ACCESS IS RESTRICTED --> 
    <body>

        <div class="container">

            <jsp:include page="/menu.jsp"/>

            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Add</a></li>
                <li class="breadcrumb-item active">Fish</li>
            </ol>
            <form action ="AddFishFish" enctype="multipart/form-data" method="post" >
                <div class="row">
                    <div class="col-md-12">
                        <div class="card border-primary mb-3">
                            <div class="card-header">Please fill in fish information</div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Scientific Name:</label>
                                            <input type="text" class="form-control" name="scName" placeholder="Scientific fish name">
                                            <small id="emailHelp" class="form-text text-muted">Please insert scientific fish name.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Common Name:</label>
                                            <input type="text" class="form-control" name="cmName"  placeholder="Fish common name">
                                            <small id="emailHelp" class="form-text text-muted">Please insert fish common name.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Desripton:</label>
                                            <textarea class="form-control" name="fish_desc"></textarea>
                                            <small id="emailHelp" class="form-text text-muted">Please insert fish common name.</small>
                                            <script>
                                                CKEDITOR.replace('fish_desc');
                                            </script>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Order ID:</label>
                                            <select id="OrderID" name="ordID" class="form-control">
                                                <option value="RD001">RD001</option>
                                                <option value="RD002">RD002</option>
                                                <option value="RD003">RD003</option>
                                                <option value="RD004">RD004</option>
                                            </select>
                                            <small id="emailHelp" class="form-text text-muted">Please insert your name.</small>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Order Name:</label>
                                            <select id="OrderName" name="ordName" class="form-control">
                                                <option value="Perciformes">Perciformes</option>
                                                <option value="Siluriformes">Siluriformes</option>
                                                <option value="Beloniformes">Beloniformes</option>
                                                <option value="Clupeiformes">Clupeiformes</option>
                                            </select>
                                            <small id="emailHelp" class="form-text text-muted">Please insert your name.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Family ID:</label>
                                            <select id="FamilyID" name="fmlyID" class="form-control">
                                                <option value="FM001">FM001</option>
                                                <option value="FM002">FM002</option>
                                                <option value="FM003">FM003</option>
                                                <option value="FM004">FM004</option>
                                            </select>
                                            <small id="emailHelp" class="form-text text-muted">Please insert your name.</small>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Family Name:</label>
                                            <select id="fmlyName" name="fmlyName" class="form-control">
                                                <option value="Ambassidae">Ambassidae</option>
                                                <option value="Ariidae">Ariidae</option>
                                                <option value="Belonidae">Belonidae</option>
                                                <option value="Clupeidae">Clupeidae</option>
                                            </select>
                                            <small id="emailHelp" class="form-text text-muted">Please insert your name.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Category ID:</label>
                                            <select id="CategoryID" name="catID" class="form-control">
                                                <option value="ES-0123">ES-0123</option>
                                                <option value="MN-9872">MN-9872</option>
                                                <option value="FS-0654">FS-0654</option>
                                            </select>
                                            <small id="emailHelp" class="form-text text-muted">Please insert your name.</small>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Category Name:</label>
                                            <select id="catName" name="catName" class="form-control">
                                                <option value="Estuarine">Estuarine</option>
                                                <option value="Marine">Marine</option>
                                                <option value="Freshwater">Freshwater</option>
                                            </select>
                                            <small id="emailHelp" class="form-text text-muted">Please insert your name.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 mb-3">
                                        <div style="height: 490px; position:relative; overflow:hidden">
                                            <div id="map"></div>
                                        </div>

                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Longlitute</label>
                                            <input type="text" id="lat" name="fish_lat" size="50" placeholder="latititure" class="form-control">
                                            <small id="emailHelp" class="form-text text-muted">Please insert your name.</small>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Longtiture:</label>
                                            <input type="text" id="long" name="fish_long" size="50" placeholder="latititure" class="form-control">
                                            <small id="emailHelp" class="form-text text-muted">Please insert your name.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Location:</label>
                                            <input type="text" class="form-control" name="fish_location"  placeholder="Fish common name">
                                            <small id="emailHelp" class="form-text text-muted">Please insert fish common name.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Images</label>
                                            <input type="file" class="form-control" name="fish_pic"  placeholder="Fish common name">
                                            <small id="emailHelp" class="form-text text-muted">Please insert fish common name.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Researcher:</label>
                                            <select id="researcher" name="researcher" class="form-control">
                                                <option value="">Please assign Reseacher</option>
                                                <rl:forEach items="${GetReseacher}" var="p">
                                                    <option value="${p.name}">${p.name}</option>
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
        <script>
// Initialize and add the map
            function initMap() {
                var latlng = new google.maps.LatLng(4.2105, 101.9758);
                var map = new google.maps.Map(document.getElementById('map'), {
                    center: latlng,
                    zoom: 8,
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