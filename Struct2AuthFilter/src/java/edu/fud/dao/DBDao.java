package edu.fud.dao;

import edu.fud.helpers.DatabaseHelper;
import edu.fud.model.Contact;
import edu.fud.model.Group;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DBDao {

    public DBDao() {
    }

    public static List<Contact> findAll() throws Exception {
        List<Contact> list = new ArrayList<>();
        String sql = "select * from [contact]";

        try (
                Connection conn = DatabaseHelper.openConnection();
                PreparedStatement pstmt = conn.prepareStatement(sql);
                ResultSet rs = pstmt.executeQuery();) {
            while (rs.next()) {
                Contact c = new Contact();
                c.setId(rs.getInt("id"));
                c.setFirstname(rs.getString("firstname"));
                c.setLastname(rs.getString("lastname"));
                c.setGroup(rs.getString("groupp"));
                c.setPhone(rs.getString("phone"));
                list.add(c);
            }
            return list;
        }
    }

    public static List<Group> findAllGroup() throws Exception {
        List<Group> list = new ArrayList<>();
        String sql = "select * from [groupp]";

        try (
                Connection conn = DatabaseHelper.openConnection();
                PreparedStatement pstmt = conn.prepareStatement(sql);
                ResultSet rs = pstmt.executeQuery();) {
            while (rs.next()) {
                Group g = new Group();
                g.setId(rs.getInt("id"));
                g.setGroup(rs.getString("name"));
                g.setDescription(rs.getString("description"));
                list.add(g);
            }
            return list;
        }
    }

    public static List<String> getGroup() throws Exception {
        List<String> list = new ArrayList<>();
        String sql = "select * from [groupp]";

        try (
                Connection conn = DatabaseHelper.openConnection();
                PreparedStatement pstmt = conn.prepareStatement(sql);
                ResultSet rs = pstmt.executeQuery();) {
            while (rs.next()) {
                list.add(rs.getString("name") + " - " + rs.getString("description"));
            }
            return list;
        }
    }
    public static void main(String[] args) throws Exception {
        DBDao dao = new DBDao();
        List<String> listGroup = dao.getGroup();
        for (String string : listGroup) {
            System.err.println("ok: "+string);
        }
    }

    public boolean insertContact(Contact c) throws Exception {
        String sql = "insert into [contact](firstname, lastname, groupp, phone) " + " values(?,?,?,?);";
        try (
                Connection conn = DatabaseHelper.openConnection();
                PreparedStatement pstmt = conn.prepareStatement(sql);) {
            pstmt.setString(1, c.getFirstname());
            pstmt.setString(2, c.getLastname());
            pstmt.setString(3, c.getGroup());
            pstmt.setString(4, c.getPhone());
            return pstmt.executeUpdate() > 0;
        }
    }

    public boolean deleteContact(String firstname) throws Exception {
        String sql = "delete from [contact] " + " where firstname= ?";
        try (
                Connection conn = DatabaseHelper.openConnection();
                PreparedStatement pstmt = conn.prepareStatement(sql);) {
            pstmt.setString(1, firstname);
            return pstmt.executeUpdate() > 0;
        }
    }

    public static Contact findById(String firstname) throws Exception {
        String sql = "select * from [contact] where firstname=?";
        try (
                Connection conn = DatabaseHelper.openConnection();
                PreparedStatement pstmt = conn.prepareStatement(sql);) {
            pstmt.setString(1, firstname);
            try (ResultSet rs = pstmt.executeQuery();) {
                if (rs.next()) {
                    Contact c = new Contact();
                    c.setId(rs.getInt("id"));
                    c.setFirstname(rs.getString("firstname"));
                    c.setLastname(rs.getString("lastname"));
                    c.setGroup(rs.getString("groupp"));
                    c.setPhone(rs.getString("phone"));
                    return c;
                }
            }

            return null;
        }
    }

    public boolean updateContact(Contact c) throws Exception {
        String sql = "update [contact] set lastname=?,groupp = ?,phone = ?" + " where firstname= ?";
        try (
                Connection conn = DatabaseHelper.openConnection();
                PreparedStatement pstmt = conn.prepareStatement(sql);) {
            pstmt.setString(4, c.getFirstname());
            pstmt.setString(1, c.getLastname());
            pstmt.setString(2, c.getGroup());
            pstmt.setString(3, c.getPhone());
            return pstmt.executeUpdate() > 0;
        }
    }

    public boolean insertGroup(Group g) throws Exception {
        String sql = "insert into [groupp](name, description) " + " values(?,?);";
        try (
                Connection conn = DatabaseHelper.openConnection();
                PreparedStatement pstmt = conn.prepareStatement(sql);) {
            pstmt.setString(1, g.getGroup());
            pstmt.setString(2, g.getDescription());
            return pstmt.executeUpdate() > 0;
        }
    }
}
