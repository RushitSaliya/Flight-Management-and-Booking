import Database.DatabaseConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class login_check extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* Storing email and password details in String variables */
            String email = request.getParameter("user_email");
            String password = request.getParameter("user_password");
            
            /* Creating DatabaseConnection object to get connection with database */
            Connection con = new DatabaseConnection().getConnection();
            
            /* Prepared Statement to check login details */
            PreparedStatement login_stmt = con.prepareStatement("SELECT * FROM user WHERE user_email=? AND user_password=?");
            
            /* Set the values in PreparedStatement */
            login_stmt.setString(1, email);
            login_stmt.setString(2, password);
            
            /* Executing the query to check login details */
            ResultSet rs = login_stmt.executeQuery();
            
            /* Checking whether user entered is right or not */
            if(rs.next()){
                String user = rs.getString(2);
                
                // Setting up user session
                HttpSession session = request.getSession();
                session.setAttribute("current_user", user);
                if("user".equals(rs.getString("user_category"))){
                    /* Sending redirect to dashboard.jsp with username*/
                    response.sendRedirect("dashboard.jsp");
                } else if("admin".equals(rs.getString("user_category"))) {
                    /* Sending redirect to dashboard.jsp with username*/
                    response.sendRedirect("admin_panel.jsp");
                }
            } else {
                /* Sending redirect to login.jsp again */
                response.sendRedirect("login.jsp?log-in=fail");
            }
            
            /* Closing the connection */
            con.close();
            
        } catch (Exception e) {
            out.println(e.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
