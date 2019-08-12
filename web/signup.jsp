<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="stylesheet.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up page</title>
    </head>
    <body>
        <div class="card text-left">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-4 mb-3"></div>
                    <div class="col-md-4 mb-3">
                        <h1 class="text-center">Sign up</h1>
                        <form>
                            <div class="form-row">
                                <div class="col-xs-12 col-md-12 mb-3">
                                    <label class="label-input" for="validationDefault01">First name</label>
                                    <input type="text" class="form-control" id="validationDefault01" placeholder="First name" required>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-12 mb-3">
                                    <label class="label-input" for="validationDefault02">Last name</label>
                                    <input type="text" class="form-control" id="validationDefault02" placeholder="Last name" required>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-12 mb-3">
                                    <label class="label-input" for="validationDefault04">Birth-date</label>
                                    <input type="date" class="form-control" id="validationDefault04" required>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-12 mb-3">
                                    <label class="label-input">Gender</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text">
                                                    <input type="radio" name="gender" value="male">
                                                    <label class="label-input">Male</label>
                                                    <input type="radio" name="gender" value="female">
                                                    <label class="label-input">Female</label>
                                                    <input type="radio" name="gender" value="other">
                                                    <label class="label-input">Other</label>
                                                </div>
                                            </div>
                                        </div>
                                  </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-12 mb-3">
                                    <label class="label-input" for="validationDefault04">Mobile no</label>
                                    <input type="text" class="form-control" id="validationDefault04" placeholder="1234567890" required>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-12 mb-3">
                                    <label class="label-input" for="validationDefault04">Email</label>
                                    <input type="mail" class="form-control" id="validationDefault04" placeholder="abc@xyz.com" required>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-12 mb-3">
                                    <label class="label-input" for="validationDefault03">City</label>
                                    <input type="text" class="form-control" id="validationDefault03" placeholder="City" required>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-12 mb-3">
                                    <label class="label-input" for="validationDefault04">State</label>
                                    <input type="text" class="form-control" id="validationDefault04" placeholder="State" required>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-12 mb-3">
                                    <label class="label-input" for="validationDefault04">Photo</label>
                                    <input type="file" class="form-control" id="validationDefault04" required>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-4 mb-3 submit-pad">
                                    <button class="btn btn-outline-primary" type="submit">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-4 mb-3"></div>
                </div>
            </div>
        </div>
    </body>
</html>
