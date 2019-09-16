$(document).ready(function() {
    
    if(localStorage.getItem("flag") == 0) {
        window.location.replace("?flight_id=" + localStorage.getItem("flight_id"));
        localStorage.setItem("flag", 1);
    }
    
});