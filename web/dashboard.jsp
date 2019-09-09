<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                var element_id = id;
                window.location.replace("?id=" + element_id);
            }
        </script>
        
        
        <%
            String seat_no = request.getParameter("id");
            pageContext.setAttribute("seat_no", seat_no);
        %>
        
         <div class="container-fluid">
             <div class="row">
                <div class="col-md-12">
                    <div class="display-4 mt-md-3 mb-md-3" style="font-size: 200%;">Welcome RushitSaliya!</div>
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
                          <a class="nav-link" href="#confirmTicket" role="tab" data-toggle="tab">Confirm ticket</a>
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
                                    <div class="plane-body pb-md-3 mb-md-3" style="margin-left: 33.5%; margin-right: 30%; margin-top: 2%; padding-top: 4%;">
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
                                            <strong>Seat no.</strong>: ${seat_no}
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
                                            <form action="" method="">
                                                <div class="form-row">
                                                    <div class="col-xs-12 col-md-12 mb-3">
                                                        <label class="label-info">Name</label>
                                                        <input type="text" class="form-control" placeholder="Full name" required>
                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="col-md-12 mb-3">
                                                        <label class="label-info">Age</label>
                                                        <input type="text" class="form-control" required placeholder="Enter your age">
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
                                                        <input type="text" class="form-control" placeholder="1234567890" required>
                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="col-md-12 mb-3">
                                                        <label class="label-info">Email</label>
                                                        <input type="mail" class="form-control" placeholder="abc@xyz.com" required>
                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="col-md-4 mb-3 submit-pad">
                                                        <button id="confirmTicket_button" class="btn btn-outline-primary" type="submit">Submit</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Confirm ticket tab -->
                        <div role="tabpanel" class="tab-pane fade" id="confirmTicket">
                        <label class="heading-info display-3">Please confirm your ticket</label>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <div class="card">
                                        <div class="card-body">
                                            <form action="" method="">
                                                <label class="label-info row"><strong>Name</strong> : Abc Xyz</label>
                                                <label class="label-info row"><strong>Age</strong> : 18 years</label>
                                                <label class="label-info row"><strong>Gender</strong> : Male</label>
                                                <label class="label-info row"><strong>Mobile no.</strong> : 40213013264</label>
                                                <label class="label-info row"><strong>Email</strong> : abc@xyz.com</label>
                                                <label class="label-info row"><strong>Flight name</strong> : Air India 5623S Boeing aircraft</label>
                                                <label class="label-info row"><strong>Seat no</strong> : ${seat_no}</label>
                                                <label class="label-info row"><strong>Boarding time</strong> : 11:00:00 Aug 15, 2020 IST</label>
                                                <label class="label-info row"><strong>Boarding point</strong> : ABC airport, XYZW</label>
                                                <label class="label-info row"><strong>Journey</strong> : ABC to XYZ</label>
                                                <label class="label-info row"><strong>Journey duration</strong> : 8 hours</label>
                                                <div class="form-row">
                                                    <div class="col-md-4 mb-3 submit-pad">
                                                        <button class="btn btn-primary" type="submit">Submit</button>
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
