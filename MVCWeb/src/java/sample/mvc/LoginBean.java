package sample.mvc;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class LoginBean implements Serializable {

    private String username;
    private String name;
    private boolean roles;

    public LoginBean() {

    }

    public LoginBean(String username, String name, boolean roles) {
        this.username = username;
        this.name = name;
        this.roles = roles;
    }

    public static Connection openConnection() throws Exception {
        String url = "jdbc:sqlserver://Localhost:1433;databaseName=tekeWeb;User=sa;Password=123456";
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection con = DriverManager.getConnection(url);
        return con;
    }

    public boolean checkLogin(String username, String password) {
        try {
            Connection con = openConnection();
            String sql = "Select * From Registration Where username = ? and password = ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            boolean result = rs.next();
            rs.close();
            stm.close();
            con.close();
            if (result) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean insert(String username, String password, String name, boolean roles) {
        try {
            Connection con = openConnection();
            String sql = "Insert Into Registration(username,password,name,isAdmin) " + "Values(?, ?, ?, ?)";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            stm.setString(3, name);
            stm.setBoolean(4, roles);
            int result = stm.executeUpdate();
            stm.close();
            con.close();
            if (result > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public LoginBean[] searchLikeLastname(String ten) {
        try {
            Connection con = openConnection();
            String sql = "Select * From Registration Where name Like ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, "%" + ten + "%");

            ResultSet rs = stm.executeQuery();
            ArrayList list = new ArrayList();
            while (rs.next()) {
                String user = rs.getString("username");
                String name = rs.getString("name");
                boolean roles = rs.getBoolean("isAdmin");
                LoginBean tmp = new LoginBean(user, name, roles);
                list.add(tmp);
            }
            LoginBean[] result = new LoginBean[list.size()];
            list.toArray(result);
            rs.close();
            stm.close();
            con.close();
            return result;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean deleteRecord() {
        try {
            Connection con = openConnection();
            String sql = "Delete * From Registration Where username = ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, username);
            int result = stm.executeUpdate();
            stm.close();
            con.close();
            if (result > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean updateRecord() {
        try {
            Connection con = openConnection();
            String sql = "Update Registration set name = ?, isAdmin=? Where username = ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, name);
            stm.setBoolean(2, roles);
            stm.setString(3, username);
            int result = stm.executeUpdate();
            stm.close();
            con.close();
            if (result > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the roles
     */
    public boolean isRoles() {
        return roles;
    }

    /**
     * @param roles the roles to set
     */
    public void setRoles(boolean roles) {
        this.roles = roles;
    }

}
