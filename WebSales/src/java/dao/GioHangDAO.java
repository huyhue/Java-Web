package dao;

import static dao.ProductDAO.mapProduct;
import java.util.ArrayList;
import model.Product;

public class GioHangDAO {

    public static ArrayList<Product> dsSanPham = new ArrayList<>();
    public static ArrayList<Product> gioHang = new ArrayList<>();

    public GioHangDAO() {
        dsSanPham.removeAll(dsSanPham);
        for (Product sp : mapProduct.values()) {
            dsSanPham.add(new Product(sp.getProductID(), sp.getProductName(), sp.getPrice(), sp.getProducerID(), sp.getImg(), "1"));
        }
    }

    public static String getTotalProductOrder() {
        dsSanPham.clear();
        String sp = "";
        for (Product od : dsSanPham) {
            sp += od.getProductID() + ", ";
        }
        return sp;
    }

    public static String tongGiaTienDatHang() {
        String gia = "0";
        for (Product od : dsSanPham) {
            gia = Integer.parseInt(od.getPrice())*Integer.parseInt(od.getSoLuongMua()) + Integer.parseInt(gia) + "";
        }
        return gia;
    }

    public boolean kiemTraSanPhamCoTrongGioHangChua(String maSanPham) {
        for (int i = 0; i < gioHang.size(); i++) {
            if (gioHang.get(i).getProductID().equals(maSanPham)) {
                return true;
            }
        }
        return false;
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

    public boolean xoaSanPhamRaKkoiGioHang(String maSanPham) {
        for (int i = 0; i < gioHang.size(); i++) {
            if (gioHang.get(i).getProductID().equals(maSanPham)) {
                gioHang.remove(i);
                return true;
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
