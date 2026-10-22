package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DatabaseConnection
{

    public static Connection initializeDatabase()
            throws SQLException, ClassNotFoundException {

        String dbDriver = "oracle.jdbc.OracleDriver";
        String dbURL = "jdbc:oracle:thin:@localhost:1521:ORCL";
        String dbUsername = "scott";      // apna Oracle user
        String dbPassword = "tiger";   // apna password

        Class.forName(dbDriver);
        return DriverManager.getConnection(dbURL, dbUsername, dbPassword);
    }
}
