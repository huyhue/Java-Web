package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.KhachHangDAO;
import javax.servlet.RequestDispatcher;
import model.KhachHang;
import model.VerifyRecaptcha;

@WebServlet("/Login")
public class LoginController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public LoginController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        String action = request.getParameter("action");

//        String ngay = request.getParameter("ngay");
//        String thang = request.getParameter("thang");
//        String nam = request.getParameter("nam");
//        String ngaySinh = nam + "-" + thang + "-" + ngay;
        if (action == null) {
            System.out.println("Khong thuc hien gi het");
        } else if (action.equals("Login")) {
            String userName = request.getParameter("username");
            String passWord = request.getParameter("password");
            if (new KhachHangDAO().checkLogin(userName, passWord)) {
                HttpSession session = request.getSession();
                KhachHang kh = KhachHangDAO.mapKhachHang.get(userName);
                session.setAttribute("userlogin", kh);
                response.sendRedirect("index.jsp");
            } else {
                request.setAttribute("message", "Invalid username or password");
                RequestDispatcher rd = request.getRequestDispatcher("account.jsp");
                rd.forward(request, response);
            }
        } else if (action.equals("Resgister")) {
            String taiKhoan = request.getParameter("taiKhoan");
            String matKhau = request.getParameter("matKhau");
            String tenKhachHang = request.getParameter("ten");
            String gioiTinh = request.getParameter("gioiTinh");
            String soDienThoai = request.getParameter("soDienThoai");
            String email = request.getParameter("email");
            String ngaySinh = request.getParameter("ngaySinh");
            String diaChi = request.getParameter("diaChi");
            String soLuongMua = request.getParameter("soLuongMua"); //chua co thong tin
            String role = request.getParameter("chkOwner");
            String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
//		System.out.println(gRecaptchaResponse);
            boolean verify = VerifyRecaptcha.verify(gRecaptchaResponse);
            String quyen = "";
            if (role != null) {
                quyen = "owner";
            } else {
                quyen = "user";
            }
            KhachHang kh = new KhachHang(taiKhoan, matKhau, tenKhachHang, gioiTinh, soDienThoai, email, ngaySinh,
                    diaChi, soLuongMua, quyen);
            HttpSession session = request.getSession();
            KhachHangDAO.mapKhachHang.put(kh.getTaiKhoan(), kh);
            new KhachHangDAO().add(kh);
//            session.setAttribute("userlogin", kh);
            response.sendRedirect("account.jsp");
        } else if (action.equals("Logout")) {
            HttpSession session = request.getSession();
            session.invalidate();
            response.sendRedirect("account.jsp");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
