import Database.DatabaseConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class getFlightData extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        
        /* Creating DatabaseConnection object to get connection with database */
        Connection con = new DatabaseConnection().getConnection();
        int success = 0;
        HttpSession session = request.getSession();
        try {
            int flight_id = Integer.parseInt(request.getParameter("flightid"));
            PreparedStatement get_stmt = con.prepareStatement("SELECT flight_name, flight_price, flight_source, flight_destination,"
                            + " flight_date, flight_time, flight_duration FROM flight WHERE flight_id=?");
            
            /* Setting the value of flight id*/
            get_stmt.setInt(1, flight_id);
            
            /* Executing the query */
            ResultSet result = get_stmt.executeQuery();
            if(result.next()){
                String selected_flight_name = result.getString("flight_name");
                String airport_name = result.getString("flight_source");
                String dest_airport_name = result.getString("flight_destination");
                String dest_date = result.getString("flight_date");
                String dest_time = result.getString("flight_time");
                String journey_hours = result.getString("flight_duration");
                String ticket_price = String.valueOf(result.getFloat("flight_price"));
                session.setAttribute("get_flight_name",selected_flight_name);
                session.setAttribute("get_airport_name",airport_name);
                session.setAttribute("get_dest_airport_name",dest_airport_name);
                session.setAttribute("get_dest_date",dest_date);
                session.setAttribute("get_dest_time",dest_time);
                session.setAttribute("get_journey_hours",journey_hours);
                session.setAttribute("get_ticket_price",ticket_price);
                success = 1;
            }
        } finally {
            /* Closing the connection */
            con.close();
        }
        response.sendRedirect(request.getContextPath() + "/admin_panel.jsp?status=" + success);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(getFlightData.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
}
