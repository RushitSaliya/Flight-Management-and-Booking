<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="java.sql.*" %>
<%@page import="Database.DatabaseConnection" %>
<%@page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="CSS/bootstrap.min.css">
        <link type="text/css" rel="stylesheet" href="stylesheet.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Swift Airways</title>
    </head>
   <body>
        <%
            if(session.getAttribute("current_user") == null) {
                response.sendRedirect("login.jsp");
            }
        %>
        <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/popper.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
        <script type="text/javascript" src="local.js"></script>
        <script>
            function changeOption(){
                var flightid = document.getElementById("flightchange").value;
                document.location.href = "http://localhost:8080/Flight-Management-and-Booking/getFlightData?flightid=" + flightid;
            }
        </script>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 pr-0 pl-0">
                    <nav class="navbar navbar-expand-md navbar-light bg-light">
                        <a class="navbar-brand mr-0" href="index.jsp">
                            <img src="static/images/Swift-Air-Logo.png" style="width: 35%; height: 50%;">
                        </a>
                        <div class="col-md-6"></div>
                        <div class="col-md-2">
                            <form method="POST" action="Logout">
                                <button class="btn btn-outline-primary mt-md-3 mb-md-3" style="float: right; color: white;border-color: white;">Logout</button>
                            </form>
                        </div>
                    </nav>
                </div>
            </div>
            <div><h1 class="text-center heading">Admin Panel</h1></div>
            <div class="row form-top-margin text-left">
                <div class="col-md-12">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                          <a class="nav-link active" href="#modifyFlightDetails" role="tab" data-toggle="tab" aria-selected="true">Modify flight details</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#addNewFlightDetails" role="tab" data-toggle="tab">New flight</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <!-- Modify flight details tab -->
                        <div role="tabpanel" class="row tab-pane active" id="modifyFlightDetails">
                            <div class="col-md-6 mb-3" style="margin-top: 1%; padding-left: 30px;">
                                <form action="admin_data" method="post">
                                    <div class="form-row">
                                        <div class="col-xs-12 col-md-12 mb-3">
                                            <label class="label-input">Enter Flight name</label>
                                            <select class="form-control" id="flightchange" onchange="changeOption()" name="flight-id">
                                                <option disabled selected>Choose flight</option>
                                                <%  // fetching flight details from 'index.jsp'
                                                    Connection con = new DatabaseConnection().getConnection();
                                                    PreparedStatement stmt = con.prepareStatement("SELECT flight_name, flight_id FROM flight");
                                                    ResultSet rst = stmt.executeQuery();
                                                    while(rst.next()){
                                                %>
                                                <option value="<%= rst.getString(2) %>" ><%= rst.getString(1) %></option>
                                                <% } con.close(); %>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-xs-12 col-md-12 mb-3">
                                            <label class="label-input">Selected Flight name</label>
                                            <input class="form-control" type="text" name="flight-name" value="<%= session.getAttribute("get_flight_name") %>" required/>
                                        </div>
                                    </div>        
                                    <div class="form-row">
                                        <div class="col-xs-12 col-md-12 mb-3">
                                            <label class="label-input">Enter airport name</label>
                                            <input class="form-control" type="text" name="airport-name" placeholder="Enter airport name from where flight will depart"
                                                   value="<%= session.getAttribute("get_airport_name") %>" required/>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-xs-12 col-md-12 mb-3">
                                            <label class="label-input">Enter destination</label>
                                            <input class="form-control" type="text" name="dest-airport-name" placeholder="Enter destination airport"
                                                   value="<%= session.getAttribute("get_dest_airport_name") %>" required/>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-xs-12 col-md-12 mb-3">
                                            <label class="label-input">Departure Date</label>
                                            <input class="form-control" type="date"name="dest-date" placeholder="Enter departure date"
                                                   value="<%= session.getAttribute("get_dest_date") %>" required/>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-xs-12 col-md-12 mb-3">
                                            <label class="label-input">Departure time</label>
                                            <input class="form-control" type="text"name="dest-time" placeholder="Enter departure time" 
                                                   value="<%= session.getAttribute("get_dest_time") %>" required/>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-xs-12 col-md-12 mb-3">
                                            <label class="label-input">Journey hours</label>
                                            <input class="form-control" type="text" name="journey-hours" placeholder="Enter journey hours"
                                                   value="<%= String.valueOf(session.getAttribute("get_journey_hours")) %>"required/>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-xs-12 col-md-12 mb-3">
                                            <label class="label-input">Ticket price</label>
                                            <input class="form-control" type="text" name="ticket-price" placeholder="Enter ticket price in $"
                                                   value="<%= session.getAttribute("get_ticket_price") %>" required/>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-4 mb-3 submit-pad">
                                            <button class="btn btn-primary btn-outline-primary" name="button-value" value="modify" type="submit">Modify</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- Add new flight details tab -->
                        <div role="tabpanel" class="tab-pane fade" id="addNewFlightDetails">
                            <div class="col-md-6 mb-3" style="margin-top: 1%;">
                                <form action="admin_data" method="post">
                                    <div class="form-row">
                                        <div class="col-xs-12 col-md-12 mb-3">
                                            <label class="label-input">Enter Flight name</label>
                                            <input class="form-control" type="text" name="flight-name" placeholder="Enter full flight name" required/>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-xs-12 col-md-12 mb-3">
                                            <label class="label-input">Enter airport name</label>
                                            <input class="form-control" type="text" name="airport-name" placeholder="Enter airport name from where flight will depart" required/>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-xs-12 col-md-12 mb-3">
                                            <label class="label-input">Enter destination</label>
                                            <input class="form-control" type="text" name="dest-airport-name" placeholder="Enter destination airport" required/>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-xs-12 col-md-12 mb-3">
                                            <label class="label-input">Departure Date</label>
                                            <input class="form-control" type="date" name="dest-date" placeholder="Enter departure date" required/>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-xs-12 col-md-12 mb-3">
                                            <label class="label-input">Departure time</label>
                                            <input class="form-control" type="text" name="dest-time" placeholder="Enter departure time" required/>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-xs-12 col-md-12 mb-3">
                                            <label class="label-input">Journey hours</label>
                                            <input class="form-control" type="text" name="journey-hours" placeholder="Enter journey hours" required/>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-xs-12 col-md-12 mb-3">
                                            <label class="label-input">Ticket price</label>
                                            <input class="form-control" type="text" name="ticket-price" placeholder="Enter ticket price in $" required/>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-4 mb-3 submit-pad">
                                            <button class="btn btn-primary btn-outline-primary" name="button-value" value="add" type="submit">Add flight</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
