<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <div class="nav-btn">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2"   aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
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
            <div class="row form-top-margin text-left">
                <div class="col-md-3 mb-3"></div>
                <div class="col-md-6 mb-3">
                    <h1 class="text-center heading">Admin Panel</h1>
                    <div class="card">
                        <div class="card-body">
                            <form>
                                <div class="form-row">
                                    <div class="col-xs-12 col-md-12 mb-3">
                                        <label class="label-input">Enter Flight name</label>
                                        <input class="form-control" type="text" name="flight-name" placeholder="Enter full flight name"/>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-xs-12 col-md-12 mb-3">
                                        <label class="label-input">Enter airport name</label>
                                        <input class="form-control" type="text" name="flight-name" placeholder="Enter airport name from where flight will depart"/>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-xs-12 col-md-12 mb-3">
                                        <label class="label-input">Enter destination</label>
                                        <input class="form-control" type="text" name="flight-name" placeholder="Enter destination airport"/>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-xs-12 col-md-12 mb-3">
                                        <label class="label-input">Departure time</label>
                                        <input class="form-control" type="text" name="dept-time" placeholder="Enter departure time"/>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-xs-12 col-md-12 mb-3">
                                        <label class="label-input">Journey hours</label>
                                        <input class="form-control" type="text" name="journey-hours" placeholder="Enter journey hours"/>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-xs-12 col-md-12 mb-3">
                                        <label class="label-input">Ticket price</label>
                                        <input class="form-control" type="text" name="ticket-price" placeholder="Enter ticket price in $"/>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-4 mb-3 submit-pad">
                                        <button class="btn btn-primary" type="submit">Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 mb-3"></div>
            </div>
        </div>
    </body>
</html>