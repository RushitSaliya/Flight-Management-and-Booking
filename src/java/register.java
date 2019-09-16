import Database.DatabaseConnection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public class register extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            Connection con = new DatabaseConnection().getConnection();
            try {
                PreparedStatement stmt = con.prepareStatement("INSERT INTO user "
                                        + "(user_name, user_bdate, user_gender, user_mobile, user_email, user_location, user_password) "
                                        + "VALUES (?, ?, ?, ?, ?, ?, ?)");
                
                // to add name to user_name column
                stmt.setString(1, request.getParameter("name"));
                
                // to add date to user_bdate column
                stmt.setString(2, (String)(request.getParameter("date")));
                
                // to add gender to user_gender column
                String gender;
                if(null == request.getParameter("gender")) {
                    gender = "m";
                } else switch (request.getParameter("gender")) {
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
                stmt.setString(3, gender);
                
                // to add mobile to user_mobile column
                stmt.setString(4, request.getParameter("mobile"));
                
                // to add email to user_email column
                stmt.setString(5, request.getParameter("email"));
                
                // to add location to user_location column
                stmt.setString(6, request.getParameter("location"));
                
                // to add password to user_password column
                stmt.setString(7, request.getParameter("password"));
                
                // executing INSERT query
                stmt.executeUpdate();
                
                response.sendRedirect("index.jsp?signup=success");
                
            } catch(SQLException e) {
                System.out.println(e.getMessage());
            }
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
