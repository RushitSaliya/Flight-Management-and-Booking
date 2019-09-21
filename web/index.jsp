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
        
        <script>
            function onSourceChange(){
                var selectobject = document.getElementById("toDestination");
                for (var i=1; i<selectobject.length; i++) {
                    if (selectobject.options[i].value == document.getElementById("fromSource").value){
                        selectobject.options[i].disabled = true;
                    } else {
                        selectobject.options[i].disabled = false;
                    }
                }
            }
            function onDestinationChange(){
                var selectobject = document.getElementById("fromSource");
                for (var i=1; i<selectobject.length; i++) {
                    if (selectobject.options[i].value == document.getElementById("toDestination").value){
                        selectobject.options[i].disabled = true;
                    } else {
                        selectobject.options[i].disabled = false;
                    }
                }
            }
        </script>
        
        
    </body>
</html>
