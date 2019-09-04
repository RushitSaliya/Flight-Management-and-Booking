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
                    <!-- Tab panes -->
                    <!-- Seat map tab -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="seatMap" style="text-align: center;">
                            <div class="display-4 mt-md-3" style="color: #668cff;">
                                Choose your Seat
                            </div>
                            <div class="plane-body pb-md-3 mb-md-3" style="margin-left: 36%; margin-right: 30%; margin-top: 2%; padding-top: 6%;">
                                <c:forEach var="j" begin="1" end="20">
                                    <div class="seat" style="margin-top: 2%; margin-left: 7%;"></div>
                                    <c:forEach var="k" begin="1" end="2">
                                        <div class="seat" style="margin-top: 2%; margin-left: 2%;"></div>
                                    </c:forEach>
                                    <div class="seat" style="margin-top: 2%; margin-left: 13%;"></div>
                                    <c:forEach var="k" begin="1" end="4">
                                        <div class="seat" style="margin-top: 2%; margin-left: 2%;"></div>
                                    </c:forEach>
                                    <div class="seat" style="margin-top: 2%; margin-left: 13%;"></div>
                                    <c:forEach var="k" begin="1" end="2">
                                        <div class="seat" style="margin-top: 2%; margin-left: 2%;"></div>
                                    </c:forEach>
                                </c:forEach>
                            </div>
                        </div>
                        <!-- Passenger information tab -->
                        <div role="tabpanel" class="tab-pane fade" id="passengerInformation">
                            <div class="display-4 mt-md-3 mb-md-3" style="font-size: 200%; color: #668cff;">Passenger information</div>
                            <div class="card mt-md-2" style="width: 50%;">
                                <div class="card-body">
                                    <form action="" method="">
                                        <div class="form-row">
                                          <div class="col">
                                            <input type="text" class="form-control" placeholder="First name">
                                          </div>
                                          <div class="col">
                                            <input type="text" class="form-control" placeholder="Last name">
                                          </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- Confirm ticket tab -->
                        <div role="tabpanel" class="tab-pane fade" id="confirmTicket">confirmTicket</div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>