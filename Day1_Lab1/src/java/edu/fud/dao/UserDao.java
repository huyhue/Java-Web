package edu.fud.dao;

import edu.fud.helpers.DatabaseHelper;
import edu.fud.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserDao {

    public boolean insertUser(User user) throws Exception {
        String sql = "insert into [user](password, name, gender) " + " values(?,?,?);";
        try (
                Connection conn = DatabaseHelper.openConnection();
                PreparedStatement pstmt = conn.prepareStatement(sql);) {
            pstmt.setString(1, user.getPassword());
            pstmt.setString(2, user.getName());
            pstmt.setBoolean(3, user.isGender());
            return pstmt.executeUpdate() > 0;
        }
    }

    public boolean updateUser(User user) throws Exception {
        String sql = "update [user] set name =?, password=?,gender = ?" + " where username= ?";
        try (
                Connection conn = DatabaseHelper.openConnection();
                PreparedStatement pstmt = conn.prepareStatement(sql);) {
            pstmt.setString(2, user.getPassword());
            pstmt.setString(1, user.getName());
            pstmt.setBoolean(3, user.isGender());
            pstmt.setInt(4, user.getUsername());
            return pstmt.executeUpdate() > 0;
        }
    }

    public boolean deleteUser(int username) throws Exception {
        String sql = "delete from [user] " + " where username= ?";
        try (
                Connection conn = DatabaseHelper.openConnection();
                PreparedStatement pstmt = conn.prepareStatement(sql);) {
            pstmt.setInt(1, username);
            return pstmt.executeUpdate() > 0;
        }
    }

    public List<User> findAll() throws Exception {
        List<User> list = new ArrayList<>();
        String sql = "select * from [user]";

        try (
                Connection conn = DatabaseHelper.openConnection();
                PreparedStatement pstmt = conn.prepareStatement(sql);
                ResultSet rs = pstmt.executeQuery();) {
            while (rs.next()) {
                User user = new User();
                user.setUsername(rs.getInt("username"));
                user.setName(rs.getString("name"));
                user.setPassword(rs.getString("password"));
                user.setGender(rs.getBoolean("gender"));

                list.add(user);
            }
            return list;
        }
    }

    public List<User> findByName(String name) throws Exception {
        List<User> list = new ArrayList<>();
        String sql = "select * from [user] where name like ?";
        try (
                Connection conn = DatabaseHelper.openConnection();
                PreparedStatement pstmt = conn.prepareStatement(sql);) {
            pstmt.setString(1, "%" + name + "%");
            try (ResultSet rs = pstmt.executeQuery();) {
                while (rs.next()) {
                    User user = new User();
                    user.setUsername(rs.getInt("username"));
                    user.setName(rs.getString("name"));
                    user.setPassword(rs.getString("password"));
                    user.setGender(rs.getBoolean("gender"));
                    list.add(user);
                }
            }
            return list;
        }
    }

    public User findById(int username) throws Exception {
        String sql = "select * from [user] where username=?";
        try (
                Connection conn = DatabaseHelper.openConnection();
                PreparedStatement pstmt = conn.prepareStatement(sql);) {
            pstmt.setInt(1, username);
            try (ResultSet rs = pstmt.executeQuery();) {
                if (rs.next()) {
                    User user = new User();
                    user.setUsername(rs.getInt("username"));
                    user.setName(rs.getString("name"));
                    user.setPassword(rs.getString("password"));
                    user.setGender(rs.getBoolean("gender"));
                    return user;
                }
            }

            return null;
        }
    }

    public User checkLogin(int username, String password) throws Exception {
        User user = findById(username);
        
        if (user != null && user.getPassword().equals(password)) {
            return user;  //success
        }
        return null; //fail
    }

}
