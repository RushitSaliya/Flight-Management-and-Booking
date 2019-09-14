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
        <script type="text/javascript" src="flightID.js"></script>
        
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 pr-0 pl-0">
                    <nav class="navbar navbar-expand-md navbar-light bg-light">
                        <a class="navbar-brand mr-0" href="index.jsp">
                            <img src="static/images/Swift-Air-Logo.png" style="width: 35%; height: 50%;">
                        </a>
                        <div class="nav-btn">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2"   aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                        </div>
                        <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
                            <ul class="navbar-nav ml-auto">
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
            <div class="row text-left form-top-margin">
                <div class="col-md-4 mb-3"></div>
                <div class="col-md-4 mb-3">
                    <%  if("fail".equals(request.getParameter("log-in"))){%>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            Please check username and password!
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                         </div>
                    <%  }%>
                    <h1 class="text-center heading">Log in</h1>
                    <div class="card">
                        <div class="card-body">
                            <form method="post" action="login_check">
                                <div class="form-row">
                                    <div class="col-xs-12 col-md-12 mb-3">
                                        <label class="label-input">Email</label>
                                        <input name="user_email" id="email" type="email" class="form-control" placeholder="Enter your email here" required>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-12 mb-3">
                                        <label class="label-input">Password</label>
                                        <input name="user_password" id="password" type="password" class="form-control" placeholder="Enter your password here" required>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-4 mb-3 submit-pad">
                                        <button class="btn btn-outline-primary" type="submit">Login</button>
                                        
                                        <% 
                                            session.setAttribute("flight_id", request.getParameter("flight_id"));
                                        %>
        
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3"></div>
            </div>
        </div>
    </body>
</html>
