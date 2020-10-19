package mvc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class database {
    public static Connection openConnection() throws Exception {
        String connectionUrl = "jdbc:sqlserver://Localhost:1433;"+"databaseName=SE1408_YourID ;User=sa;Password=123456";
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection con = DriverManager.getConnection(connectionUrl);
        return con;
    }
    public List<magaine> getAll() throws Exception {
        List<magaine> list = new ArrayList<>();
        String sql = "select * from [Magazine_YourID]";

        try (
                Connection conn = openConnection();
                PreparedStatement pstmt = conn.prepareStatement(sql);
                ResultSet rs = pstmt.executeQuery();) {
            while (rs.next()) {
                magaine m = new magaine();
                m.setId(rs.getString("id"));
                m.setTitle(rs.getString("title"));
                m.setPublisher(rs.getString("publisher"));
                m.setPrice(rs.getFloat("price"));
                list.add(m);
            }
            return list;
        }
    }
    public boolean newMagazine(magaine m) throws Exception {
        String sql = "insert into [Magazine_YourID](id, title, publisher,price) " + " values(?,?,?,?);";
        try (
                Connection conn = openConnection();
                PreparedStatement pstmt = conn.prepareStatement(sql);) {
            pstmt.setString(1, m.getId());
            pstmt.setString(2, m.getTitle());
            pstmt.setString(3, m.getPublisher());
            pstmt.setFloat(4, m.getPrice());
            return pstmt.executeUpdate() > 0;
        }
    }
}
