package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.GioHangDAO;
import model.KhachHang;

@WebServlet("/XuLyMuaSanPham")
public class XuLyMuaHang extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public XuLyMuaHang() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maSP = request.getParameter("maSanPham");

        HttpSession session = request.getSession();
        KhachHang kh = (KhachHang) session.getAttribute("userlogin");
        
        if (kh != null) {
            new GioHangDAO().themVaoGioHang(maSP);
            response.sendRedirect("cart.jsp");
        } else {
            response.sendRedirect("account.jsp");
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
