package edu.fud.helpers;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseHelper {

    public static Connection openConnection() throws Exception {
        String connectionUrl = "jdbc:sqlserver://Localhost:1433;"+"databaseName=EMPDB;User=sa;Password=123456";
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection con = DriverManager.getConnection(connectionUrl);
        return con;
    }
}
