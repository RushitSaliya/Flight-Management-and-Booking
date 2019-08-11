<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="text/stylesheet" href="stylesheet.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Swift Airways</title>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-7">
                    <div class="card mt-md-5">
                        <div class="card-body">
                            <div class="display-4 mb-md-3" style="font-size: 200%; color: #007bff">Book your ticket</div>
                            <form>
                                <div class="form-group">
                                  <input type="text" name="from" class="form-control" placeholder="From*">
                                </div>
                                <div class="form-group">
                                  <input type="text" name="to" class="form-control" placeholder="To*">
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