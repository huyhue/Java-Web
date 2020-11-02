package dao;

import static dao.ProductDAO.mapProduct;
import java.util.ArrayList;
import java.util.Stack;
import model.Product;

public class GioHangDAO {

    public static ArrayList<Product> dsSanPham = new ArrayList<>();
    public static ArrayList<Product> gioHang = new ArrayList<>();
    public static ArrayList<Product> undo = new ArrayList<>();
    public static Stack<Product> undoGioHang = new Stack<>();

    public GioHangDAO() {
        dsSanPham.removeAll(dsSanPham);
        for (Product sp : mapProduct.values()) {
            dsSanPham.add(new Product(sp.getProductID(), sp.getProductName(), sp.getPrice(), sp.getProducerID(), sp.getImg(), "1"));
        }
    }
    
    public boolean restoreDeleted() {
        if (!undoGioHang.isEmpty()) {
            Product p = undoGioHang.pop();
            System.out.println(p);
            if (p != null) {
                gioHang.add(p);
            }
            return true;
        } else {
            return false;
        }
    }
    
    public boolean delAll() {
        undo.addAll(gioHang);
        gioHang.removeAll(gioHang);
        return true;
    }
    
    public boolean undo() {
        gioHang.addAll(undo);
        undo.removeAll(undo);
        return true;
    }
    
    public static Product laySp(String maSanPham) {
        Product p = new Product();
        for (int i = 0; i < gioHang.size(); i++) {
            if (gioHang.get(i).getProductID().equals(maSanPham)) {
                p = new Product(gioHang.get(i).getProductID(), gioHang.get(i).getProductName(), gioHang.get(i).getPrice(), gioHang.get(i).getProducerID(), gioHang.get(i).getImg(), gioHang.get(i).getSoLuongMua());
            }
        }
        return p;
    }

    public boolean xoaSanPhamRaKkoiGioHang(String maSanPham) {
        for (int i = 0; i < gioHang.size(); i++) {
            if (gioHang.get(i).getProductID().equals(maSanPham)) {
                gioHang.remove(i);
                return true;
            }
        }
        return false;
    }

    public static String getTotalProductOrder() {
        String sp = "";
        for (Product od : dsSanPham) {
            sp += od.getProductID() + ",";
        }
        return sp;
    }

    public String tongGiaTienDatHang() {
        String gia = "0";
        for (Product od : dsSanPham) {
            gia = Integer.parseInt(od.getPrice()) + Integer.parseInt(gia) + "";
        }
        return gia;
    }
    private static String sp;
    private static String tongtien;

    public static String getSp() {
        return sp;
    }

    public static void setSp(String sp) {
        GioHangDAO.sp = sp;
    }

    public static String getTongtien() {
        return tongtien;
    }

    public static void setTongtien(String tongtien) {
        GioHangDAO.tongtien = tongtien;
    }

    public boolean kiemTraSanPhamCoTrongGioHangChua(String maSanPham) {
        for (int i = 0; i < gioHang.size(); i++) {
            if (gioHang.get(i).getProductID().equals(maSanPham)) {
                return true;
            }
        }
        return false;
    }
    public static int laySoLuongSp() {
        int sluong = 0;
        for (int i = 0; i < gioHang.size(); i++) {
            sluong += Integer.parseInt(gioHang.get(i).getSoLuongMua());
        }
        return sluong;
    }

    public boolean themVaoGioHang(String maSanPham) {
        boolean kiemTra = kiemTraSanPhamCoTrongGioHangChua(maSanPham);
        for (int i = 0; i < dsSanPham.size(); i++) {
            if (dsSanPham.get(i).getProductID().equals(maSanPham) && kiemTra == false) {
                gioHang.add(dsSanPham.get(i));
                return true;
            }
        }
        if (kiemTra == true) {  //neu san pham co roi thi tang so luong
            int index = gioHang.size();
            for (int i = 0; i < index; i++) {
                if (gioHang.get(i).getProductID().equals(maSanPham)) {
                    gioHang.get(i).setSoLuongMua(Integer.parseInt(gioHang.get(i).getSoLuongMua()) + 1 + "");
                    index = i;
                }
            }
        }
        return false;
    }

    public static ArrayList<Product> getGioHang() {
        return gioHang;
    }

    public static void setGioHang(ArrayList<Product> gioHang) {
        GioHangDAO.gioHang = gioHang;
    }

}
