package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import model.MyConnectDB;
import model.ThanhVien;

public class ThanhVienDAO implements ObjectDAO {

    @Override
    public boolean add(Object obj) {
        ThanhVien tv = (ThanhVien) obj;
        try {
            new MyConnectDB().thucThiCauLenhSQL("insert into ThanhVien values('" + tv.getId() + "','" + tv.getHo() + "','" + tv.getTen() + "','" + tv.getTaKhoan() + "')");
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return false;
    }
    public boolean insertUser(ThanhVien tv) throws Exception {
        String sql = "insert into [ThanhVien](id, Ho, Ten, TaiKhoan) " + " values(?,?,?,?);";
        try (
                Connection connect = MyConnectDB.connect();
                PreparedStatement pstmt = connect.prepareStatement(sql);) {
            pstmt.setString(1, tv.getId());
            pstmt.setString(2, tv.getHo());
            pstmt.setString(3, tv.getTen());
            pstmt.setString(3, tv.getTaKhoan());
            
            return pstmt.executeUpdate() > 0;
        }
    }

    @Override
    public boolean edit(Object obj, String id) {
        ThanhVien tv = (ThanhVien) obj;
        try {
            new MyConnectDB().thucThiCauLenhSQL("update ThanhVien set Ho='" + tv.getHo() + "',Ten='" + tv.getTen() + "',TaiKhoan='" + tv.getTaKhoan() + "' where id='" + id + "'");
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean del(String id) {
        try {
            new MyConnectDB().thucThiCauLenhSQL("delete from ThanhVien where id='" + id + "'");
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        return false;
    }

}
