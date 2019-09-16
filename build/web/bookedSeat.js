$(document).ready(function() {
    
    var seats = localStorage.getItem("temp_seat").split(',');
    
    for(i=0; i<seats.length; i++) {
        document.getElementById(seats[i]).style.backgroundColor = "gray";
    }
    
});