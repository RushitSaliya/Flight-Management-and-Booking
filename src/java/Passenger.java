import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Database.DatabaseConnection;
import java.sql.*;
import javax.servlet.http.HttpSession;

public class Passenger extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            Connection con = new DatabaseConnection().getConnection();
            HttpSession session = request.getSession();
            try {
                PreparedStatement p_stmt = con.prepareStatement("INSERT INTO passenger (flight_id, passenger_name, passenger_age, passenger_gender, passenger_mobile, passenger_email, passenger_seat) VALUES (?, ?, ?, ?, ?, ?, ?)");
                
                out.println("Query structured!");
                p_stmt.setInt(1, Integer.parseInt((String)(session.getAttribute("flight_id"))));
                out.println("FlightID inserted! " + (String)(session.getAttribute("flight_id")));
                p_stmt.setString(2, (String)(session.getAttribute("p_name")));
                out.println("Passenger name inserted! " + (String)(session.getAttribute("p_name")));
                p_stmt.setInt(3, Integer.parseInt((String)(session.getAttribute("p_age"))));
                out.println("Passenger age inserted! " + (String)(session.getAttribute("p_age")));
                String gender;
                if(null == (String)(session.getAttribute("p_gender"))) {
                    gender = "m";
                } else switch ((String)(session.getAttribute("p_gender"))) {
                    case "male":
                        gender = "m";
                        break;
                    case "female":
                        gender = "f";
                        break;
                    case "other":
                        gender = "o";
                        break;
                    default:
                        gender = "m";
                        break;
                }
                p_stmt.setString(4, gender);
                out.println("Passenger gender inserted! " + gender);
                p_stmt.setString(5, (String)(session.getAttribute("p_mobile")));
                out.println("Passenger mobile inserted! " + (String)(session.getAttribute("p_mobile")));
                p_stmt.setString(6, (String)(session.getAttribute("p_email")));
                out.println("Passenger email inserted! " + (String)(session.getAttribute("p_email")));
                p_stmt.setString(7, (String)(session.getAttribute("seat_no")));
                out.println("Passenger seat-no. inserted! " + (String)(session.getAttribute("seat_no")));
                
                p_stmt.executeUpdate();
                
                out.println("RECORD INSERTED!");
                
                response.sendRedirect("http://localhost:8080/Flight-Management-and-Booking/dashboard.jsp");
                
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
