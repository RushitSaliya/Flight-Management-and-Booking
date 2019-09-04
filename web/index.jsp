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
                                    <a class="nav-link logout-link" href="signup.jsp">
                                        Sign Up
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <div class="row index-page-image pt-5 pb-5">
                <div class="col-md-7 mt-md-3 mb-md-3">
                    <div class="card mt-md-5 mb-md-5" style="background-color: transparent;">
                        <div class="card-body">
                            <div class="display-4 mb-md-3 pb-md-3" style="font-size: 200%; color: #fff;">
                                <strong>Book your ticket</strong>
                            </div>
                            <form>
                                <div class="row">
                                    <div class="col-md-5" style="padding-right: 0;">
                                        <div class="form-group">
                                            <input type="text" name="from" class="form-control" placeholder="From*">
                                        </div>
                                    </div>
                                    <div class="col-md-2" style="text-align: center;">
                                        <div class="form-group">
                                            <a href="#">
                                                <img class="inverted-img" src="static/icons/swap.svg" style="height: 50%; width: 50%;">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-5" style="padding-left: 0;">
                                        <div class="form-group">
                                            <input type="text" name="to" class="form-control" placeholder="To*">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                  <input type="date" from="date" class="form-control">
                                </div>
                                <button type="submit" class="btn btn-outline-primary">Search Flight</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>