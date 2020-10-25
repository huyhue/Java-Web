package dao;

import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

import model.ConnectDTB;

public class TraSuaDAO extends Object {

    public static Map<String, TraSua> mapTraSua = loadDTB();

    public int layTongDoanhThuTheoNgay(String date) {
        int sum = 0;
        for (TraSua ts : mapTraSua.values()) {
            if (ts.getNgay().equals(date)) {
                sum += Integer.parseInt(ts.getDoanhThu());
            }
        }
        return sum;
    }

    public int layTongDoanhThuTheoThang(String text) {
        int sum = 0;
        Map<String, TraSua> mapTS = new ThongKeDAO().thongKeTheoThang(text);
        for (TraSua ts : mapTS.values()) {
            if (ts.getMa().equals(mapTraSua.get(ts.getMa()).getMa())) {
                sum += Integer.parseInt(ts.getDoanhThu());
            }
        }
        return sum;
    }

    public int layTongDoanhThuTheoTuan(String tuan, String text) {
        Map<String, TraSua> mapTS = new ThongKeDAO().thongKeTheoTuan(tuan, text);
        int sum = 0;
        for (TraSua ts : mapTS.values()) {
            if (ts.getMa().equals(mapTraSua.get(ts.getMa()).getMa())) {
                sum += Integer.parseInt(ts.getDoanhThu());
            }
        }
        return sum;
    }

    public int layTongDoanhThuTheoKhoangNgay(String dateStart, String dateEnd) {
        Map<String, TraSua> mapTS = new ThongKeDAO().thongKeTheoKhoanNgay(dateStart, dateEnd);
        int sum = 0;
        for (TraSua ts : mapTS.values()) {
            if (ts.getMa().equals(mapTraSua.get(ts.getMa()).getMa())) {
                sum += Integer.parseInt(ts.getDoanhThu());
            }
        }
        return sum;
    }

    public static void main(String[] args) {
//		System.out.println(new TraSuaDAO().layTongDoanhThuTheoNgay("2017-05-10"));
//		System.out.println(mapTraSua.get("TS008"));
    }

    private static Map<String, TraSua> loadDTB() {
        Map<String, TraSua> map = new HashMap<>();
        try {
            ResultSet rs = new ConnectDTB().chonDuLieu("select * from  [dbo].[TraSua]");
            while (rs.next()) {
                String ma = rs.getString(1);
                String ten = rs.getString(2);
                String gia = rs.getString(3);
                String soLuong = rs.getString(4);
                String doanhThu = rs.getString(5);
                String ngay = rs.getString(6);
                map.put(ma, new TraSua(ma, ten, gia, soLuong, doanhThu, ngay));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return map;
    }

    @Override
    public boolean add(Object obj) {
        // TODO Auto-generated method stub
        return false;
    }

    @Override
    public boolean edit(Object obj) {
        return false;
    }

    @Override
    public boolean del(String id) {
        return false;
    }

}
