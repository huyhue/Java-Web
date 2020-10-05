package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MyConnectDB {

    String sql;
static Connection connect =null;
    public MyConnectDB() {
        super();
        this.sql = "jdbc:sqlserver://Localhost:1433;databaseName=EMPDB;User=sa;Password=123456";
    }

    public static Connection connect() throws Exception {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connect = DriverManager.getConnection("jdbc:sqlserver://Localhost:1433;databaseName=EMPDB;User=sa;Password=123456");
            return connect;
        } catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public void thucThiCauLenhSQL(String sql) throws Exception {
        Connection connect = connect();
        Statement stmt = connect.createStatement();
        stmt.executeUpdate(sql);
    }

    public ResultSet chonDuLieuTuDTB(String sql) throws Exception {
        Connection connect = connect();
        Statement stmt = connect.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        return rs;
    }

    public static void main(String[] args) throws Exception {
        MyConnectDB connect = new MyConnectDB();
        System.out.println(connect.connect());
    }
}
