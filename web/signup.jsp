<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="CSS/bootstrap.min.css">
        <link type="text/css" rel="stylesheet" href="stylesheet.css">
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
                            <img src="static/images/Swift-Air-Logo.png" style="width: 35%; height: 50%;">
                        </a>
                        <div class="nav-btn">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                        </div>
                        <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item active">
                                    <a class="nav-link" href="login.jsp">
                                        Log In
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
                    <h1 class="text-center heading">Sign up</h1>
                    <div class="card">
                        <div class="card-body">
                            <form class="needs-validation" method="POST" action="register" novalidate="true">
                                <div class="form-row">
                                    <div class="col-xs-12 col-md-12 mb-3">
                                        <label class="label-input">Name</label>
                                        <input name="name" type="text" class="form-control" placeholder="Full name" required>
                                        <div class="invalid-feedback">
                                            Please enter full name.
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-12 mb-3">
                                        <label class="label-input">Birth-date</label>
                                        <input name="date" type="date" class="form-control" required>
                                        <div class="invalid-feedback">
                                            Please enter birth-date.
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-12 mb-3">
                                        <label class="label-input">Gender</label>
                                        <div class="btn-group">
                                            <div class="input-group-prepend">
                                                <input class="radio-btn-input" type="radio" required="required" name="gender" value="male">
                                                <label class="label-input">Male</label>
                                                <input class="radio-btn-input" type="radio" name="gender" value="female">
                                                <label class="label-input">Female</label>
                                                <input class="radio-btn-input" type="radio" name="gender" value="other">
                                                <label class="label-input">Other</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-12 mb-3">
                                        <label class="label-input">Mobile no</label>
                                        <input name="mobile" type="text" class="form-control" placeholder="1234567890" required>
                                        <div class="invalid-feedback">
                                            Please enter valid mobile number.
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-12 mb-3">
                                        <label class="label-input">Email</label>
                                        <input name="email" type="mail" class="form-control" placeholder="abc@xyz.com" required>
                                        <div class="invalid-feedback">
                                            Please enter valid email address.
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-12 mb-3">
                                        <label class="label-input">Location</label>
                                        <input name="location" type="text" class="form-control" placeholder="City with state" required>
                                        <div class="invalid-feedback">
                                            Please enter city.
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-12 mb-3">
                                        <label class="label-input">Password</label>
                                        <input name="password" type="password" id="enteredpassword" class="form-control" placeholder="Minimum 8 characters required" required>
                                        <div class="invalid-feedback">
                                            Please enter password.
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-12 mb-3">
                                        <label class="label-input">Confirm password</label>
                                        <input name="c_password" type="password" id="confirmpassword" class="form-control" placeholder="Enter password again" required>
                                        <div class="invalid-feedback">
                                            Please confirm password.
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-4 mb-3 submit-pad">
                                        <button class="btn btn-primary" type="submit">Sign up</button>
                                    </div>
                                </div>
                            </form>
                            <script>
                                // Example starter JavaScript for disabling form submissions if there are invalid fields
                                (function() {
                                  'use strict';
                                  window.addEventListener('load', function() {
                                    // Fetch all the forms we want to apply custom Bootstrap validation styles to
                                    var forms = document.getElementsByClassName('needs-validation');
                                    // Loop over them and prevent submission
                                    var validation = Array.prototype.filter.call(forms, function(form) {
                                      form.addEventListener('submit', function(event) {
                                        if (form.checkValidity() === false) {
                                          event.preventDefault();
                                          event.stopPropagation();
                                        }
                                        form.classList.add('was-validated');
                                      }, false);
                                    });
                                  }, false);
                                })();
                            </script>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3"></div>
            </div>
        </div>
    </body>
</html>
