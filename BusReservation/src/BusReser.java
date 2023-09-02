import java.sql.*;
public class BusReser {
    private static String url = "jdbc:postgresql://localhost:5432/busreserv";
    private static String username = "postgres";
    private static  String password = "1";
    public static  Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url,username,password);
    }
}
