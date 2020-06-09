<%-- 
    Document   : EditFish
    Created on : May 24, 2020, 12:17:09 AM
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

        <title>Fish Edit</title>

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
                <li class="breadcrumb-item"><a href="#">Add</a></li>
                <li class="breadcrumb-item active">Fish</li>
            </ol>
         
            <fi:forEach items="${getFishbyID}" var="p">
            <form action ="EditFishFish" enctype="multipart/form-data" method="post">
                <input type="hidden" name="fishID" value="${p.fishID}">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card border-primary mb-3">
                            <div class="card-header">Please fill in fish information</div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Scientific Name:</label>
                                            <input type="text" class="form-control" value="${p.scName}" name="scName" placeholder="Scientific fish name">
                                            <small id="emailHelp" class="form-text text-muted">Please insert scientific fish name.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Common Name:</label>
                                            <input type="text" class="form-control" value="${p.cmName}"  name="cmName"  placeholder="Fish common name">
                                            <small id="emailHelp" class="form-text text-muted">Please insert fish common name.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Description:</label>
                                            <textarea class="form-control" value="" name="fish_desc">${p.fish_desc}</textarea>
                                            <small id="emailHelp" class="form-text text-muted">Please insert description of fish.</small>
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
                                                <option value="${p.ordID}">${p.ordID}</option>
                                                <option value="RD001">RD001</option>
                                                <option value="RD002">RD002</option>
                                                <option value="RD003">RD003</option>
                                                <option value="RD004">RD004</option>
                                            </select>
                                            <small id="emailHelp" class="form-text text-muted">Please insert order ID.</small>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Order Name:</label>
                                            <select id="OrderName" name="ordName" class="form-control">
                                                <option value="${p.ordName}">${p.ordName}</option>
                                                <option value="Perciformes">Perciformes</option>
                                                <option value="Siluriformes">Siluriformes</option>
                                                <option value="Beloniformes">Beloniformes</option>
                                                <option value="Clupeiformes">Clupeiformes</option>
                                            </select>
                                            <small id="emailHelp" class="form-text text-muted">Please insert order name.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Family ID:</label>
                                            <select id="FamilyID" name="fmlyID" class="form-control">
                                                 <option value="${p.fmlyID}">${p.fmlyID}</option>
                                                <option value="FM001">FM001</option>
                                                <option value="FM002">FM002</option>
                                                <option value="FM003">FM003</option>
                                                <option value="FM004">FM004</option>
                                            </select>
                                            <small id="emailHelp" class="form-text text-muted">Please insert family ID.</small>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Family Name:</label>
                                            <select id="fmlyName" name="fmlyName" class="form-control">
                                                  <option value="${p.fmlyName}">${p.fmlyName}</option>
                                                <option value="Ambassidae">Ambassidae</option>
                                                <option value="Ariidae">Ariidae</option>
                                                <option value="Belonidae">Belonidae</option>
                                                <option value="Clupeidae">Clupeidae</option>
                                            </select>
                                            <small id="emailHelp" class="form-text text-muted">Please insert family name.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Category ID:</label>
                                            <select id="CategoryID" name="catID" class="form-control">
                                                 <option value="${p.catID}">${p.catID}</option>
                                                <option value="ES-0123">ES-0123</option>
                                                <option value="MN-9872">MN-9872</option>
                                                <option value="FS-0654">FS-0654</option>
                                            </select>
                                            <small id="emailHelp" class="form-text text-muted">Please insert category ID.</small>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Category Name:</label>
                                            <select id="catName" name="catName" class="form-control">
                                                   <option value="${p.catName}">${p.catName}</option>
                                                <option value="Estuarine">Estuarine</option>
                                                <option value="Marine">Marine</option>
                                                <option value="Freshwater">Freshwater</option>
                                            </select>
                                            <small id="emailHelp" class="form-text text-muted">Please insert category name.</small>
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
                                            <label>Latitude:</label>
                                            <input type="text" id="lat" value="${p.fish_lat}" name="fish_lat" size="50" placeholder="latitude" class="form-control">
                                            <small id="emailHelp" class="form-text text-muted">Please insert latitude.</small>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Longitude:</label>
                                            <input type="text" id="long" value="${p.fish_long}" name="fish_long" size="50" placeholder="longitude" class="form-control">
                                            <small id="emailHelp" class="form-text text-muted">Please insert longitude.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Location:</label>
                                            <input type="text" class="form-control" value="${p.fish_location}" name="fish_location"  placeholder="Fish location">
                                            <small id="emailHelp" class="form-text text-muted">Please insert location of fish.</small>
                                        </div>
                                    </div>
                                </div>
                                 <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Images:- ${p.fish_pic}</label>
                                            <input type="file" class="form-control" name="fish_pic"  placeholder="Fish image">
                                            <small id="emailHelp" class="form-text text-muted">Please insert fish image.</small>
                                        </div>
                                    </div>
                                </div>
                                            
                                <%--             
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Researcher:</label>
                                             <select id="researcher" name="researcher" class="form-control">
                                                <option value="${p.researcher}">${p.researcher}</option>
                                               <fi:forEach items="${getReseacher}" var="p">
                                                <option value="${p.name}">${p.name}</option>
                                               </fi:forEach>
                                             </select>                          
                                            <small id="emailHelp" class="form-text text-muted">Please insert fish common name.</small>
                                        </div>
                                    </div>
                                </div>
                                --%>
                                
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
            
                </fi:forEach>


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