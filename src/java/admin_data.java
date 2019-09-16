import Database.DatabaseConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/admin_data"})
public class admin_data extends HttpServlet {

    public static int success = 0;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        /* Creating DatabaseConnection object to get connection with database */
        Connection con = new DatabaseConnection().getConnection();
        try {
            /* Storing flight details in String variables */
            String flight_name = request.getParameter("flight-name");
            String airport_name = request.getParameter("airport-name");
            String dest_airport_name = request.getParameter("dest-airport-name");
            String dest_date = request.getParameter("dest-date");
            String dest_time = request.getParameter("dest-time");
            String journey_hours = request.getParameter("journey-hours");
            Float ticket_price = Float.parseFloat(request.getParameter("ticket-price"));
            
            /* Checking if any value is null or zero */
            if("".equals(airport_name) || "".equals(dest_airport_name) || "".equals(dest_date) || "".equals(dest_time) || 
                    "".equals(journey_hours) || ticket_price==0){
                response.sendRedirect("http://localhost:8080/Flight-Management-and-Booking/admin_panel.jsp?result=failed");
            } else {
                /* Checking if flight details will be modifed or added */
                if("modify".equals(request.getParameter("button-value"))){
                    /* If modify button is pressed then it is flight ID */
                    int flight_id = Integer.parseInt(request.getParameter("flight-id"));
                    PreparedStatement modify_stmt = con.prepareStatement("UPDATE flight SET flight_name=?, flight_price=?, flight_source=?, flight_destination=?, "
                            + "flight_date=?, flight_time=?, flight_duration=? WHERE flight_id=?");

                    /* Seting the values in PreparedStatement */
                    modify_stmt.setString(1, flight_name);
                    modify_stmt.setFloat(2, ticket_price);
                    modify_stmt.setString(3, airport_name);
                    modify_stmt.setString(4, dest_airport_name);
                    modify_stmt.setString(5, dest_date);
                    modify_stmt.setString(6, dest_time);
                    modify_stmt.setString(7, journey_hours);
                    modify_stmt.setInt(8, flight_id);
                    
                    /* Executing the query to check login details */
                    success = modify_stmt.executeUpdate();
                } else if ("add".equals(request.getParameter("button-value"))){
                    PreparedStatement add_stmt = con.prepareStatement("INSERT INTO flight(flight_name, flight_price, flight_source, flight_destination,"
                            + " flight_date, flight_time, flight_duration, flight_total_seats, flight_available_seats) VALUES (?,?,?,?,?,?,?,240,240)");

                    /* Seting the values in PreparedStatement */
                    add_stmt.setString(1, flight_name);
                    add_stmt.setFloat(2, ticket_price);
                    add_stmt.setString(3, airport_name);
                    add_stmt.setString(4, dest_airport_name);
                    add_stmt.setString(5, dest_date);
                    add_stmt.setString(6, dest_time);
                    add_stmt.setString(7, journey_hours);

                    /* Executing the query to check login details */
                    success = add_stmt.executeUpdate();
                }
            }
        } catch(Exception e) {
            out.print(e.getMessage());
        } finally{
//            Closing connection 
            con.close();
            if(success==1){
                response.sendRedirect("admin_panel.jsp?result=success");
            } else {
                response.sendRedirect("admin_panel.jsp?result=failed");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(admin_data.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(admin_data.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
