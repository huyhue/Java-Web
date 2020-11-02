package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.GioHangDAO;

@WebServlet("/XuLyXoaSP")
public class XuLyXoaSP extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    
    public XuLyXoaSP() {
        super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String chucNang = request.getParameter("chucNang");
        if (chucNang.equals("Del")) {
            String maSP = request.getParameter("maSanPham");
            GioHangDAO.undoGioHang.push(GioHangDAO.laySp(maSP));
            new GioHangDAO().xoaSanPhamRaKkoiGioHang(maSP);
        } else if (chucNang.equals("DelAll")) {
            new GioHangDAO().delAll();
        } else if (chucNang.equals("UndoAll")) {
            new GioHangDAO().undo();
        }else if (chucNang.equals("UndoOne")) {
            new GioHangDAO().restoreDeleted();
        } 
        response.sendRedirect("cart.jsp");
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
    
}
