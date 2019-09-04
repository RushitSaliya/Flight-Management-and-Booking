<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="CSS/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link type="text/css" rel="stylesheet" href="stylesheet.css">
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
                            <h1 class="text-center heading-sign-up">Search results</h1>
                            <div class="card result-main">
                                <div class="card card-body result">
                                    <div class="result-line big-font">
                                        <span class="float-left">Air India 4040</span>
                                        <span class="float-right">$200</span>
                                    </div>
                                    <div class="mid-font">
                                        <span class="float-left">2:00 PM</span>
                                        <div class="text-center">8 hours
                                            <span class="float-right">26 seats</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="card card-body result">
                                    <div class="result-line big-font">
                                        <span class="float-left">Jet Airways</span>
                                        <span class="float-right">$300</span>
                                    </div>
                                    <div class="mid-font">
                                        <span class="float-left">7:00 AM</span>
                                        <div class="text-center">7 hours
                                            <span class="float-right">16 seats</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 mb-3"></div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>