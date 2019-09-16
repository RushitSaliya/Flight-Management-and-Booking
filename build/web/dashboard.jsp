<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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
        <script type="text/javascript" src="flightID.js"></script>
        <script type="text/javascript" src="bookedSeat.js"></script>
        
        <%
            if(session.getAttribute("current_user") == null) {
                response.sendRedirect("login.jsp");
            }
        %>
        
        <!-- function to get selected seat ID -->
        <script>
            function getID(id) {
                var element_id = id;
                window.location.replace("?id=" + element_id);
            }
        </script>
        
        <%  // to add seat_no to session variable seat_no
            String seat_no = request.getParameter("id");
            if(seat_no != null) {
                session.setAttribute("seat_no", seat_no);
            }
            
            // here we're fetching flight details from flight table
            Connection con = new DatabaseConnection().getConnection();
            Statement stmt = con.createStatement();
            String s = (String)session.getAttribute("flight_id");
            ResultSet rst = stmt.executeQuery("SELECT * FROM flight WHERE flight_id=" + s);
            rst.next();
        %>
        
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/flight-management-and-booking" user="root" password="@root"/>
        <sql:query dataSource="${db}" var="rs">
            SELECT passenger_seat FROM passenger WHERE flight_id='<%= s %>';
        </sql:query>
        
        <% String temp_seat = ""; %>
        <c:forEach var="row" items="${rs.rows}">
            <c:set var="temp_seat" value="${row.passenger_seat}" />
            <%
                temp_seat += (String)pageContext.getAttribute("temp_seat");
                temp_seat += ",";
            %>
        </c:forEach>
        <%
            // if some flight is completely empty then we're not supposed to get substring
            if(temp_seat.length() >= 1) {
                temp_seat = temp_seat.substring(0, temp_seat.length() - 1);
            }
            session.setAttribute("temp_seat", temp_seat);
        %>
        <script>
            localStorage.setItem("temp_seat", "<%= session.getAttribute("temp_seat") %>");
        </script>
        <%-- <c:set var="booked_seats_jsp" value="${fn:split(temp_seat, ',')}" />
        <c:out value="${booked_seats_jsp}" /> --%>
        
         <div class="container-fluid">
            <div class="card mt-md-2 mb-md-2">
                <div class="card-body" style="padding: 0 15px 0 15px;">
                    <div class="row">
                        <div class="col-md-10">
                            <div class="display-4 mt-md-3 mb-md-3" style="font-size: 200%;">Welcome, <strong><% out.print(session.getAttribute("current_user")); %></strong></div>
                        </div>
                        <div class="col-md-2">
                            <form method="POST" action="Logout">
                                <button class="btn btn-outline-primary mt-md-3 mb-md-3" style="float: right;">Logout</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" href="#seatMap" role="tab" data-toggle="tab" aria-selected="true">Seat map</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#passengerInformation" role="tab" data-toggle="tab">Passenger information</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#confirmTicket" role="tab" data-toggle="tab">Confirm details</a>
                        </li>
                    </ul>
                    <!-- TAB PANES -->
                    <!-- Seat map tab -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="seatMap" style="text-align: center;">
                            <div class="row">
                                <div class="col-md-10">
                                    <div class="heading-info display-3 mt-md-3" style="color: #668cff; text-align: center;">
                                        Choose your Seat
                                    </div>
                                    <div class="plane-body pb-md-3 mb-md-3" style="margin-left: 33.5%; margin-right: 30%; margin-top: 1%; padding-top: 4%;">
                                        <% int number = 1; %>
                                        <div class="number-top" style="margin-top: 2%; margin-left: 8%;"><% out.print(number++); %></div>
                                        <c:forEach var="k" begin="1" end="2">
                                            <div class="number-top" style="margin-top: 2%; margin-left: 2%;"><% out.print(number++); %></div>
                                        </c:forEach>
                                        <div class="number-top" style="margin-top: 2%; margin-left: 13%;"><% out.print(number++); %></div>
                                        <c:forEach var="k" begin="1" end="4">
                                            <div class="number-top" style="margin-top: 2%; margin-left: 2%;"><% out.print(number++); %></div>
                                        </c:forEach>
                                        <div class="number-top" style="margin-top: 2%; margin-left: 13%;"><% out.print(number++); %></div>
                                        <c:forEach var="k" begin="1" end="2">
                                            <div class="number-top" style="margin-top: 2%; margin-left: 2%;"><% out.print(number++); %></div>
                                        </c:forEach>
                                        <c:forTokens items="A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T" delims="," var="vertical_var">
                                            <c:set var="num" value="1" />
                                            <div class="char"><c:out value="${vertical_var}" /></div>
                                            <div class="seat" id="${vertical_var}${num}" onclick="getID(this.id);" style="margin-top: 2%; margin-left: 2%;"></div>
                                            <c:set var="num" value="${num+1}" />
                                            <c:forEach var="k" begin="1" end="2">
                                                <div class="seat" id="${vertical_var}${num}" onclick="getID(this.id);" style="margin-top: 2%; margin-left: 2%;"></div>
                                                <c:set var="num" value="${num+1}" />
                                            </c:forEach>
                                            <div class="seat" id="${vertical_var}${num}" onclick="getID(this.id);" style="margin-top: 2%; margin-left: 13%;"></div>
                                            <c:set var="num" value="${num+1}" />
                                            <c:forEach var="k" begin="1" end="4">
                                                <div class="seat" id="${vertical_var}${num}" onclick="getID(this.id);" style="margin-top: 2%; margin-left: 2%;"></div>
                                                <c:set var="num" value="${num+1}" />
                                            </c:forEach>
                                            <div class="seat" id="${vertical_var}${num}" onclick="getID(this.id);" style="margin-top: 2%; margin-left: 13%;"></div>
                                            <c:set var="num" value="${num+1}" />
                                            <c:forEach var="k" begin="1" end="2">
                                                <div class="seat" id="${vertical_var}${num}" onclick="getID(this.id);" style="margin-top: 2%; margin-left: 2%;"></div>
                                                <c:set var="num" value="${num+1}" />
                                            </c:forEach>
                                        </c:forTokens>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="mt-md-4">
                                        <div class="display-4" style="font-size: 25px;">
                                            <strong>Seat no.</strong> ${seat_no}
                                        </div>
                                        <button class="btn btn-outline-primary mt-md-2" id="next">Next</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Passenger information tab -->
                        <div role="tabpanel" class="tab-pane fade" id="passengerInformation">
                            <label class="heading-info display-3">Enter your details</label>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <div class="card">
                                        <div class="card-body">
                                            <form action="" method="POST">
                                                <div class="form-row">
                                                    <div class="col-xs-12 col-md-12 mb-3">
                                                        <label class="label-info">Name</label>
                                                        <input type="text" name="name" class="form-control" placeholder="Full name" required>
                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="col-md-12 mb-3">
                                                        <label class="label-info">Age</label>
                                                        <input type="text" name="age" class="form-control" required placeholder="Enter your age">
                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="col-md-12 mb-3">
                                                        <label class="label-info">Gender</label>
                                                        <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <input class="radio-btn-input mr-md-1" type="radio" name="gender" value="male">
                                                                <label class="label-info">Male</label>
                                                                <input class="radio-btn-input ml-md-3 mr-md-1" type="radio" name="gender" value="female">
                                                                <label class="label-info">Female</label>
                                                                <input class="radio-btn-input ml-md-3 mr-md-1" type="radio" name="gender" value="other">
                                                                <label class="label-info">Other</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="col-md-12 mb-3">
                                                        <label class="label-info">Mobile no</label>
                                                        <input type="text" name="mobile" class="form-control" placeholder="1234567890" required>
                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="col-md-12 mb-3">
                                                        <label class="label-info">Email</label>
                                                        <input type="mail" name="email" class="form-control" placeholder="abc@xyz.com" required>
                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="col-md-4 mb-3 submit-pad">
                                                        <button id="confirmTicket_button" class="btn btn-outline-primary" type="submit">Next</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Confirm details tab -->
                        <div role="tabpanel" class="tab-pane fade" id="confirmTicket">
                            <label class="heading-info display-3">Please confirm your details</label>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <div class="card">
                                        <div class="card-body">
                                            <%
                                                String pass_name = request.getParameter("name");
                                                String pass_age = request.getParameter("age");
                                                String pass_gender = request.getParameter("gender");
                                                String pass_mobile = request.getParameter("mobile");
                                                String pass_email = request.getParameter("email");
                                            %>
                                            <form action="Passenger" method="POST">
                                                <label class="label-info row"><strong>Name</strong> : 
                                                    <% 
                                                        out.print(pass_name); 
                                                        session.setAttribute("p_name", pass_name); 
                                                    %>
                                                </label>
                                                <label class="label-info row"><strong>Age</strong> : 
                                                    <% 
                                                        out.print(pass_age);
                                                        session.setAttribute("p_age", pass_age);
                                                    %>
                                                </label>
                                                <label class="label-info row"><strong>Gender</strong> : 
                                                    <% 
                                                        out.print(pass_gender);
                                                        session.setAttribute("p_gender", pass_gender);
                                                    %>
                                                </label>
                                                <label class="label-info row"><strong>Mobile no.</strong> : 
                                                    <% 
                                                        out.print(pass_mobile);
                                                        session.setAttribute("p_mobile", pass_mobile);
                                                    %>
                                                </label>
                                                <label class="label-info row"><strong>Email</strong> : 
                                                    <% 
                                                        out.print(pass_email);
                                                        session.setAttribute("p_email", pass_email);
                                                    %>
                                                </label>
                                                <label class="label-info row"><strong>Flight name</strong> : <% out.print(rst.getString("flight_name")); %></label>
                                                <label class="label-info row"><strong>Seat no</strong> : <% out.print(session.getAttribute("seat_no")); %></label>
                                                <label class="label-info row"><strong>Boarding time</strong> : <% out.print(rst.getString("flight_time")); %></label>
                                                <label class="label-info row"><strong>Boarding point</strong> : XXX</label>
                                                <label class="label-info row"><strong>Journey</strong> : <% out.print(rst.getString("flight_source")); %> to <% out.print(rst.getString("flight_destination")); %></label>
                                                <label class="label-info row"><strong>Journey duration</strong> : <% out.print(rst.getString("flight_duration")); %></label>
                                                <div class="form-row">
                                                    <div class="col-md-4 mb-3 submit-pad">
                                                        <button class="btn btn-outline-primary" type="submit">Send ticket</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>