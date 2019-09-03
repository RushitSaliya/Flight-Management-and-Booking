<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="stylesheet.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Swift Airways</title>
    </head>
    <body>
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
            <div class="row index-page-image card text-left">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-3 mb-3"></div>
                        <div class="col-md-6 mb-3">
                            <h1 class="text-center heading">Admin Panel</h1>
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
                        <div class="col-md-3 mb-3"></div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>