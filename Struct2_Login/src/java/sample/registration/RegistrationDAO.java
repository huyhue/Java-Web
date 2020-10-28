package sample.registration;

import connection.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RegistrationDAO {

    public boolean checkLogin(String username, String password) {
        try {
            Connection con = DBUtil.openConnection();
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

    public boolean deleteRecord(String username) throws SQLException {
        Connection con = null;
        PreparedStatement stm = null;
        try {
            con = DBUtil.openConnection();
            if (con != null) {
                String sql = "Delete From Registration Where username = ?";
                stm = con.prepareStatement(sql);
                stm.setString(1, username);
                int row = stm.executeUpdate();
                if (row > 0) {
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally{
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return false;
    }
    public boolean updatePassRole(String username, String password, boolean role) throws SQLException {
        Connection con = null;
        PreparedStatement stm = null;
        try {
            con = DBUtil.openConnection();
            if (con != null) {
                String sql = "Update Registration"+" set password = ?, isAdmin = ?"+" Where username = ?";
                stm = con.prepareStatement(sql);
                stm.setString(1, password);
                stm.setBoolean(2, role);
                stm.setString(3, username);
                int row = stm.executeUpdate();
                if (row > 0) {
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally{
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return false;
    }

    public static void main(String[] args) {
        RegistrationDAO dao = new RegistrationDAO();
        boolean result = dao.checkLogin("huyhue", "123");
        System.out.println("ok: " + result);
        dao.searchLastname("h");
        for (RegistrationDTO a : listAccounts) {
            System.out.println("name: " + a.getLastname());
        }
    }
    private static List<RegistrationDTO> listAccounts;

    public List<RegistrationDTO> getListAccounts() {
        return listAccounts;
    }

    public void searchLastname(String searchValue) {
        try {
            Connection con = DBUtil.openConnection();
            String sql = "Select * From Registration Where name Like ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, "%" + searchValue + "%");

            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                String user = rs.getString("username");
                String pass = rs.getString("password");
                String name = rs.getString("name");
                boolean roles = rs.getBoolean("isAdmin");
                RegistrationDTO dto = new RegistrationDTO(user, pass, name, roles);
                if (this.listAccounts == null) {
                    this.listAccounts = new ArrayList<>();
                }
                this.listAccounts.add(dto);
            }
            rs.close();
            stm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
