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
                        <div class="col-md-4 mb-3"></div>
                        <div class="col-md-4 mb-3">
                            <h1 class="text-center heading">Log in</h1>
                            <form method="post" action="">
                                <div class="form-row">
                                    <div class="col-xs-12 col-md-12 mb-3">
                                        <label class="label-input">Email</label>
                                        <input type="text" class="form-control" placeholder="Enter your email here" required>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-12 mb-3">
                                        <label class="label-input">Password</label>
                                        <input type="password" class="form-control" placeholder="Enter your password here" required>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-4 mb-3 submit-pad">
                                        <button class="btn btn-primary" type="submit">Login</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-4 mb-3"></div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
