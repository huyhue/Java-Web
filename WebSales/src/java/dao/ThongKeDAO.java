package dao;

import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import model.ConnectDTB;
import model.Order;

public class ThongKeDAO {

    public ThongKeDAO() {

    }

    public Map<String, Order> thongKeTheoTuan(String tuan, String text) {
        ArrayList<String> list = danhSachKhoangNgayTheoTuan(tuan, text);
        return thongKeTheoKhoanNgay(list.get(0), list.get(1));
    }

    public ArrayList<String> danhSachKhoangNgayTheoTuan(String tuan, String text) {
        int week = Integer.parseInt(tuan);
        String year = text.substring(0, text.indexOf("-"));
        String month = text.substring(text.indexOf("-") + 1, text.length());
        ArrayList<String> list = new ArrayList<>();
        switch (week) {
            case 1:
                list.add(year + "-" + month + "-" + 1);
                list.add(year + "-" + month + "-" + 7);
                break;
            case 2:
                list.add(year + "-" + month + "-" + 8);
                list.add(year + "-" + month + "-" + 14);
                break;
            case 3:
                list.add(year + "-" + month + "-" + 15);
                list.add(year + "-" + month + "-" + 21);
                break;
            case 4:
                list.add(year + "-" + month + "-" + 22);
                list.add(year + "-" + month + "-" + 31);
                break;
            default:
                break;
        }
        return list;
    }

    public Map<String, Order> thongKeTheoKhoanNgay(String dateStart, String dateEnd) {
        Map<String, Order> map = new HashMap<>();
        try {
            ResultSet rs = new ConnectDTB().selectData("select * from [dbo].[Order] where DATE>='" + dateStart + "' and DATE<='" + dateEnd + "'");
            while (rs.next()) {
                String orderID = rs.getString(1);
                String customerName = rs.getString(2);
                String productName = rs.getString(3);
                String day = rs.getString(4);
                String totalPrice = rs.getString(5);
                map.put(orderID, new Order(orderID, customerName, productName, day, totalPrice));
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Loi thong ke theo thang");
        }
        return map;
    }

    public Map<String, Order> thongKeTheoThang(String text) {
        //2020-01
        String year = text.substring(0, text.indexOf("-"));
        String month = text.substring(text.indexOf("-") + 1, text.length());

        Map<String, Order> map = new HashMap<>();
        try {
            ResultSet rs = new ConnectDTB().selectData("select * from [dbo].[Order] where year(DATE)='" + year + "' and month(DATE)='" + month + "'");
            while (rs.next()) {
                String orderID = rs.getString(1);
                String customerName = rs.getString(2);
                String productName = rs.getString(3);
                String day = rs.getString(4);
                String totalPrice = rs.getString(5);
                map.put(orderID, new Order(orderID, customerName, productName, day, totalPrice));
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Loi thong ke theo thang");
        }
        return map;
    }

    public Map<String, Order> thongKeTheoThangHeThong() {
        Date toDate = new Date(System.currentTimeMillis());
        SimpleDateFormat fomatTime = new SimpleDateFormat("yyyy-MM-dd");
        String date = fomatTime.format(toDate.getTime());

        String year = date.substring(0, date.indexOf("-"));
        String month = date.substring(date.indexOf("-") + 1, date.lastIndexOf("-"));

        Map<String, Order> map = new HashMap<>();
        try {
            ResultSet rs = new ConnectDTB().selectData("select * from [dbo].[Order] where year(DATE)='" + year + "' and month(DATE)='" + month + "'");
            while (rs.next()) {
                String orderID = rs.getString(1);
                String customerName = rs.getString(2);
                String productName = rs.getString(3);
                String day = rs.getString(4);
                String totalPrice = rs.getString(5);
                map.put(orderID, new Order(orderID, customerName, productName, day, totalPrice));
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Loi thong ke theo thang");
        }
        return map;
    }

    public Map<String, Order> thongKeTheoNgay(String date) {
        Map<String, Order> map = new HashMap<>();
        try {
            ResultSet rs = new ConnectDTB().selectData("select * from [dbo].[Order] where DATE='" + date + "'");
            while (rs.next()) {
                String orderID = rs.getString(1);
                String customerName = rs.getString(2);
                String productName = rs.getString(3);
                String day = rs.getString(4);
                String totalPrice = rs.getString(5);
                map.put(orderID, new Order(orderID, customerName, productName, day, totalPrice));
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Loi thong ke theo ngay");
        }
        return map;
    }

    public Map<String, Order> thongKeTheoNgayHeThong() {
        Date toDate = new Date(System.currentTimeMillis());
        SimpleDateFormat fomatTime = new SimpleDateFormat("yyyy-MM-dd");
        String date = fomatTime.format(toDate.getTime());

        Map<String, Order> map = new HashMap<>();
        try {
            ResultSet rs = new ConnectDTB().selectData("select * from [dbo].[Order] where DATE='" + date + "'");
            while (rs.next()) {
                String orderID = rs.getString(1);
                String customerName = rs.getString(2);
                String productName = rs.getString(3);
                String day = rs.getString(4);
                String totalPrice = rs.getString(5);
                map.put(orderID, new Order(orderID, customerName, productName, day, totalPrice));
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Loi thong ke theo ngay");
        }
        return map;
    }

    public static void main(String[] args) {
        String ngay = "	2020-10-16";
        String tuan = "2";
        String thang = "2020-10";
        String ngay2 = "2017-06-12";

//		System.out.println(new ThongKeDAO().thongKeTheoNgay(ngay));
//		System.out.println(new ThongKeDAO().thongKeTheoNgayHeThong());
        Map<String, Order> map = new ThongKeDAO().thongKeTheoThang(thang);
        for (Order ts : map.values()) {
            System.out.println(ts);
        }
//		System.out.println(new ThongKeDAO().thongKeTheoThang(thang));
//		System.out.println(new ThongKeDAO().thongKeTheoThangHeThong());
//		System.out.println(new ThongKeDAO().thongKeTheoTuan(tuan, thang));
//		System.out.println(new ThongKeDAO().thongKeTheoKhoanNgay(ngay, ngay2));

    }
}
