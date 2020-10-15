package db;

import java.sql.Connection;
import java.sql.SQLException;

public class Test {

    public static void main(String[] args) {
        Connection con = null;
        DBContext db = new DBContext();
        try {
            con = db.getConnection();
            if (con != null) {
                System.out.println("connected");
            } else {
                System.out.println("fail connect");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

    }
}
