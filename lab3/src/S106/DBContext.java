package S106;


import java.sql.Connection;
import java.sql.DriverManager;

public class DBContext {

    private final String serverName = "localhost"; //127.0.0.1
    private final String dbName = "J2.S.P0106";
    private final String portNumber = "1433";
    private final String userID = "sa";
    private final String password = "123456";
    
    public Connection getConnection() throws Exception {
        String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url, userID, password);
    }
}
