$(document).ready(function() {
    
    $('#next').click(function() {
        $('.nav-tabs a[href="#passengerInformation"]').tab('show');
    });
    
    $('#confirmTicket_button').click(function() {
        $('.nav-tabs a[href="#confirmTicket"]').tab('show');
    });
    
});