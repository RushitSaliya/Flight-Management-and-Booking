<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="java.sql.*" %>
<%@page import="Database.DatabaseConnection" %>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="CSS/bootstrap.min.css">
        <link type="text/css" rel="stylesheet" href="stylesheet.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Swift Airways</title>
    </head>
    <body>
        <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script type="text/javascript" src="JS/popper.min.js"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
        <script type="text/javascript" src="local.js"></script>
        
        <!-- function to get selected seat ID -->
        <script>
            function getID(id) {
                // window.location.replace("/login.jsp?id=" + id);
                localStorage.setItem("flight_id", id);
                localStorage.setItem("flag", 0);
            }
        </script>
        
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 pr-0 pl-0">
                    <nav class="navbar navbar-expand-md navbar-light bg-light">
                        <a class="navbar-brand mr-0" href="index.jsp">
                            <img src="static/images/Swift-Air-Logo.png" style="width: 35%; height: 50%;">
                        </a>
                        <div class="nav-btn">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                        </div>
                        <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item active">
                                    <a class="nav-link" href="login.jsp">
                                        Sign In
                                    </a>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link logout-link" href="signup.jsp">
                                        Sign Up
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <div class="row text-left">
                <div class="col-md-3 mb-3"></div>
                <div class="col-md-6 mb-3">
                    <h1 class="text-center heading">Search results</h1>
                    <div class="result-main">
                        <%  // fetching flight details from 'index.jsp'
                            int size = 0;
                            boolean foundResults = false;
                            Connection con = new DatabaseConnection().getConnection();
                            PreparedStatement stmt = con.prepareStatement("SELECT * FROM flight "
                                                                            + "WHERE flight_source=? AND flight_destination=? AND flight_date=?");
                            stmt.setString(1, request.getParameter("from"));
                            stmt.setString(2, request.getParameter("to"));
                            stmt.setString(3, (String)(request.getParameter("date")));
                            ResultSet rst = stmt.executeQuery();
                            if(rst.next() == false) {
                                foundResults = false;
                            } else {
                                rst.last();
                                size = rst.getInt("flight_id");
                                pageContext.setAttribute("size", size);
                                rst.first();
                                foundResults = true;
                            }
                        %>
                        <div class="display-4 text-center" style="font-size: 150%; margin-bottom: 2%;"><strong><% out.print(size); %></strong> results found for <strong><% out.print(request.getParameter("from")); %></strong> to 
                            <strong><% out.print(request.getParameter("to")); %></strong>
                        </div>
                        <%if(!foundResults) {%>
                            <div class="mt-md-4" style="text-align: center; font-size: 18px; color: #ff1a1a;">
                                <strong>Oops! No flights found.</strong>
                            </div>
                        <%} else {%>
                            <c:forEach begin="1" end="${size}">
                                <a href="login.jsp" style="text-decoration: none;" id="<%= rst.getString("flight_id") %>" onclick="getID(this.id);">
                                    <div class="card card-body result">
                                        <div class="result-line big-font">
                                            <span class="float-left">
                                                <% out.print(rst.getString("flight_name")); %>
                                            </span>
                                            <span class="float-right">
                                                <% out.print("$ " + rst.getString("flight_price")); %>
                                            </span>
                                        </div>
                                        <div class="mid-font">
                                            <span class="float-left">
                                                <% out.print(rst.getString("flight_time")); %>
                                            </span>
                                            <div class="text-center"><% out.print(rst.getString("flight_duration")); %>
                                                <span class="float-right"> <% out.print(rst.getString("flight_available_seats")); %> seats</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <%  // making ResultSet point to next record
                                    rst.next();
                                %>
                            </c:forEach>
                        <%}%>
                    </div>
                </div>
                <div class="col-md-3 mb-3"></div>
            </div>
        </div>
    </body>
</html>