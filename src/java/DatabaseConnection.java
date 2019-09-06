import java.sql.*;

public class DatabaseConnection {
    public Connection con = null;
    
    public DatabaseConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            this.con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/sonoo","root","@root");
        } catch(ClassNotFoundException | SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    public Connection getConnection() {
        return this.con;
    }
}
