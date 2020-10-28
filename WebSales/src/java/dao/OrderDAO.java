package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Random;
import java.util.Set;

import model.ConnectDTB;
import model.Order;

public class OrderDAO implements ObjectDAO {

    public static Map<String, Order> mapOrder = getLoadOrderDTB();
    public static Map<String, Order> mapUndo = new HashMap<>();
    public static Set<String> setDateOrder = getSetDateOrder();

    public OrderDAO() {
    }
    
    public int layTongDoanhThuTheoNgay(String date) {
        int sum = 0;
        for (Order o : mapOrder.values()) {
            if (o.getDate().equals(date)) {
                sum += Integer.parseInt(o.getTotalPrice());
            }
        }
        return sum;
    }

    public int layTongDoanhThuTheoThang(String text) {
        int sum = 0;
        Map<String, Order> mapTS = new ThongKeDAO().thongKeTheoThang(text);
        for (Order o : mapTS.values()) {
            if (o.getOrderID().equals(mapOrder.get(o.getOrderID()).getOrderID())) {
                sum += Integer.parseInt(o.getTotalPrice());
            }
        }
        return sum;
    }
    
    public static void main(String[] args) throws Exception {
        Map<String, Order> mapList = loadById("huyhue");
        for (Order o : mapList.values()) {
            System.out.println(o.getProductID());
            System.out.println(o.getCustomerID());
        }
        OrderDAO o = new OrderDAO();
        System.err.println("Tong: "+o.layTongDoanhThuTheoThang("2020-10"));
    }

    public int layTongDoanhThuTheoTuan(String tuan, String text) {
        Map<String, Order> mapTS = new ThongKeDAO().thongKeTheoTuan(tuan, text);
        int sum = 0;
        for (Order o : mapTS.values()) {
            if (o.getOrderID().equals(mapOrder.get(o.getOrderID()).getOrderID())) {
                sum += Integer.parseInt(o.getTotalPrice());
            }
        }
        return sum;
    }

    public int layTongDoanhThuTheoKhoangNgay(String dateStart, String dateEnd) {
        Map<String, Order> mapTS = new ThongKeDAO().thongKeTheoKhoanNgay(dateStart, dateEnd);
        int sum = 0;
        for (Order o : mapTS.values()) {
            if (o.getOrderID().equals(mapOrder.get(o.getOrderID()).getOrderID())) {
                sum += Integer.parseInt(o.getTotalPrice());
            }
        }
        return sum;
    }

    public static Set<String> getSetDateOrder() {
        Set<String> date = new HashSet<>();
        for (Order od : mapOrder.values()) {
            date.add(od.getDate());
        }
        return date;
    }

    public boolean delAll() {
        mapUndo.putAll(mapOrder);
        mapOrder.clear();

        return true;
    }

    public boolean undo() {
        mapOrder.putAll(mapUndo);
        mapUndo.clear();
        return true;
    }

    public int random(int limit) {
        Random rd = new Random();
        int res = rd.nextInt(limit);
        while (mapOrder.containsKey("Order" + res)) {
            res = rd.nextInt(limit);
        }
        return res;
    }

    @Override
    public boolean add(Object obj) {
        Order order = (Order) obj;
        mapOrder.put(order.getOrderID(), order);
        try {
            Connection connection = ConnectDTB.getConnect();
            PreparedStatement statement = connection.prepareStatement("insert into [Order] values(?,?,?,?,?)");
            statement.setString(1, order.getOrderID());
            statement.setString(2, order.getCustomerID());
            statement.setString(3, order.getProductID());
            statement.setString(4, order.getDate());
            statement.setString(5, order.getTotalPrice());
            statement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
        return false;
    }

    public Map<String, Order> getSelectOrderDate(String date) {
        Map<String, Order> mapSelectProduct = new HashMap<>();
        for (Order sp : mapOrder.values()) {
            if (sp.getDate().equals(date)) {
                mapSelectProduct.put(sp.getOrderID(), sp);
            }
        }
        return mapSelectProduct;
    }

    public static Map<String, Order> getLoadOrderDTB() {
        Map<String, Order> listOrder = new HashMap<String, Order>();
        try {
            ResultSet rs = new ConnectDTB().selectData("select * from [Order]");
            while (rs.next()) {
                String orderID = rs.getString(1);
                String customerName = rs.getString(2);
                String productName = rs.getString(3);
                String date = rs.getString(4);
                String totalPrice = rs.getString(5);
                listOrder.put(orderID, new Order(orderID, productName, customerName, date, totalPrice));
            }
        } catch (Exception e) {
            System.out.println("Lỗi ở load danh sách database " + e.getMessage());
            e.printStackTrace();
            return null;
        }
        return listOrder;
    }
    public static Map<String, Order> loadById(String name) throws Exception {
        Map<String, Order> listOrder = new HashMap<String, Order>();
        String sql = "select * from [Order] where CustomerID=?";
        try (
                Connection conn = ConnectDTB.getConnect();
                PreparedStatement pstmt = conn.prepareStatement(sql);) {
            pstmt.setString(1,name);
            try (ResultSet rs = pstmt.executeQuery();) {
                while (rs.next()) {
                    String orderID = rs.getString(1);
                String customerName = rs.getString(2);
                String productName = rs.getString(3);
                String date = rs.getString(4);
                String totalPrice = rs.getString(5);
                listOrder.put(orderID, new Order(orderID, productName, customerName, date, totalPrice));
                }
            }
            return listOrder;
        }
    }
    

    public boolean edit(Object obj) {
        Order order = (Order) obj;
        mapOrder.replace(order.getOrderID(), order);
        try {
            Connection connection = ConnectDTB.getConnect();
            String sql = "update [Order] set OrderID=?,CustomerID=?,ProductID=?,Date=?,TotalPrice=? where OrderID=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, order.getOrderID());
            preparedStatement.setString(2, order.getCustomerID());
            preparedStatement.setString(3, order.getProductID());
            preparedStatement.setString(4, order.getDate());
            preparedStatement.setString(5, order.getTotalPrice());
            preparedStatement.setString(6, order.getOrderID());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
        return true;
    }

    @Override
    public boolean del(String id) {
        mapOrder.remove(id);
        try {
            new ConnectDTB().excuteSql("delete from [Order] where OrderID='" + id + "'");
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
        return true;
    }

}
