package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dbconnect {
	private final String url = "jdbc:postgresql://localhost:5432/Myweb";
    private final String user = "postgres";
    private final String password = "123456";
	public Connection getConnect() throws ClassNotFoundException {
        Connection conn = null;
        try {
        	Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection(url, user, password);

            if (conn != null) {
                System.out.println("Connected to the PostgreSQL server successfully.");
            } else {
                System.out.println("Failed to make connection!");
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return conn;
    }
	
}
