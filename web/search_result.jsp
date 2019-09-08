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
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 pr-0 pl-0">
                    <nav class="navbar navbar-expand-md navbar-light bg-light">
                        <a class="navbar-brand mr-0" href="index.jsp">
                            <img src="static/images/Swift-Air-Logo.png" style="width: 60%; height: 50%;">
                        </a>
                        <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
                            <ul class="navbar-nav mr-auto">
                                <li class="nav-item">
                                    <a class="nav-link pl-0" href="#">Statistics</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Estimation</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Contact Us</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">About Us</a>
                                </li>
                            </ul>
                        </div>
                        <div class="nav-btn">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                        </div>
                        <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item active">
                                    <a class="nav-link" href="#">
                                        Sign In
                                    </a>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link logout-link" href="#">
                                        Sign Up
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <div class="row index-page-image card text-left">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-3 mb-3"></div>
                        <div class="col-md-6 mb-3">
                            <h1 class="text-center heading">Search results</h1>
                            <div class="card result-main">
                                <%  // fetching flight details from 'index.jsp'
                                    Connection con = new DatabaseConnection().getConnection();
                                    PreparedStatement stmt = con.prepareStatement("SELECT * FROM flight "
                                                                                    + "WHERE flight_source=? AND flight_destination=? AND flight_date=?");
                                    stmt.setString(1, request.getParameter("from"));
                                    stmt.setString(2, request.getParameter("to"));
                                    stmt.setString(3, (String)(request.getParameter("date")));
                                    ResultSet rst = stmt.executeQuery();
                                    rst.last();
                                    pageContext.setAttribute("rst1", rst);
                                    rst.first();
                                    pageContext.setAttribute("rst2", rst);
                                %>
                                <c:forEach begin="1" end="${rst1.getRow() + 1}">
                                    <div class="card card-body result">
                                        <div class="result-line big-font">
                                            <span class="float-left">
                                                <c:out value="${rst2.getString(2)}"/>
                                            </span>
                                            <span class="float-right">
                                                $<c:out value="${rst2.getString(3)}"/>
                                            </span>
                                        </div>
                                        <div class="mid-font">
                                            <span class="float-left">
                                                <c:out value="${rst2.getString(7)}"/>
                                            </span>
                                            <div class="text-center"><c:out value="${rst2.getString(8)}"/>
                                                <span class="float-right"><c:out value="${rst2.getString(10)}"/> seats</span>
                                            </div>
                                        </div>
                                    </div>
                                    <%  // making ResultSet point to next record
                                        rst = (ResultSet)(pageContext.getAttribute("rst2"));
                                        rst.next();
                                        pageContext.setAttribute("rst2", rst);
                                    %>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="col-md-3 mb-3"></div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
