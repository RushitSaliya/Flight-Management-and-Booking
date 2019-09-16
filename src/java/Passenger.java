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
                
                p_stmt.setInt(1, Integer.parseInt((String)(session.getAttribute("flight_id"))));
                p_stmt.setString(2, (String)(session.getAttribute("p_name")));
                p_stmt.setInt(3, Integer.parseInt((String)(session.getAttribute("p_age"))));
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
                p_stmt.setString(5, (String)(session.getAttribute("p_mobile")));
                p_stmt.setString(6, (String)(session.getAttribute("p_email")));
                p_stmt.setString(7, (String)(session.getAttribute("seat_no")));
                
                p_stmt.executeUpdate();
                
                response.sendRedirect("dashboard.jsp");
                
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
