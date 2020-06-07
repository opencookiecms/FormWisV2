<%-- 
    Document   : chartbylocation
    Created on : May 31, 2020, 12:05:54 AM
    Author     : anaqi
--%>


<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="DBController.Dbconnect"%>
<%@page import="java.sql.Statement"%>
<%@page import="Dao.Datacontroller"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%@taglib prefix="fi" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    Gson gsonObj = new Gson();
    Map<Object, Object> map = null;
    List<Map<Object, Object>> list = new ArrayList<Map<Object, Object>>();
    String dataPoints = null;
    String location = "";

    String idtmp = request.getParameter("fish_location");

    try {
        String fish_location = request.getParameter("fish_location");
        String xVal; int yVal;

        ResultSet rs = Dbconnect.getps("SELECT scName, COUNT(scName) FROM fish WHERE fish_location ='" + fish_location + "'GROUP BY scName").executeQuery();
          
        while (rs.next()) {
            xVal = rs.getString("scName");
            yVal = rs.getInt("COUNT(scName)");
            map = new HashMap<Object, Object>();
            map.put("label", xVal);
            map.put("y", yVal);
            list.add(map);
            dataPoints = gsonObj.toJson(list);
            location = fish_location;
          
        }
        rs.close();
    } catch (SQLException e) {
        out.println(e);
         out.println(e);
        dataPoints = null;
    }
%>

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

    <body>

        <div class="container">
 <jsp:include page="/menu.jsp"/>

            <div class="row">
                <div class="col-md-12">
                    <div class="card border-primary mb-3">
                        <div class="card-header">Chart by location:</div>
                        <div class="card-body">
                            <div class="row">
                                 <div id="chartContainer" style="height: 370px; width: 100%;"></div>


                            </div>

                        </div>
                    </div> 
                </div>
            </div>



        </div> <!-- /container -->

<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	theme: "light2", // "light1", "dark1", "dark2"
	title: {
		text:"{location}",
	},
	subtitles: [{
		text: "Number of fish",
		fontSize: 16
	}],
	axisY: {
		scaleBreaks: {
			type: "wavy",
			autoCalculate: true
		}
	},
	data: [{
		type: "column",
		indexLabel: "{y}",
		dataPoints: <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}
</script>
        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->

        <script>window.jQuery || document.write('<script src="static/js/jquery.min.js"><\/script>')</script>
        <script src="static/js/bootstrap.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
     
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

    </body>
</html>