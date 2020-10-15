package controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.KhachHangDAO;
import model.KhachHang;

@WebServlet("/Process")
public class ProcessController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ProcessController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("text/html;charset=utf-8");
		
		HttpSession session = request.getSession();
		session.getAttribute("");
		
		String chucNang = request.getParameter("chucNang");
		String maKH = request.getParameter("id");
		if(chucNang==null){
			
		}else if(chucNang.equals("Delete")){ //Chức năng xóa khách hàng
//			UndoDAO.undoCustomer.push(KhachHangDAO.mapKhachHang.get(maKH));
			new KhachHangDAO().del(maKH);
		}else
			//chức năng xóa toàn bộ khách hàng
			if(chucNang.equals("DelAll")){
			new KhachHangDAO().delAll();
		}else
			//chức năng undoAll
			if(chucNang.equals("UndoAll")){
			new KhachHangDAO().undo();
		}else
			//chức năng undoOne
			if(chucNang.equals("UndoOne")){
			new UndoDAO().restoreDeletedCustomer();
		}else
			//chức năng sửa khách hàng
			if(chucNang.equals("Edit")){

            String matKhau = request.getParameter("matKhau");
            String tenKhachHang = request.getParameter("ten");
            String gioiTinh = request.getParameter("gioiTinh");
            String soDienThoai = request.getParameter("soDienThoai");
            String email = request.getParameter("email"); 
            String ngaySinh = request.getParameter("ngaySinh");
            String diaChi = request.getParameter("diaChi");
            String soLuongMua = request.getParameter("soLuongMua"); //chua co thong tin
            String role = request.getParameter("chkOwner"); 
            String quyen = "";
            if (role != null) {
                quyen = "owner";
            } else {
                quyen = "user";
            }
            KhachHang kh = new KhachHang(maKH, matKhau, tenKhachHang, gioiTinh, soDienThoai, email, ngaySinh,
                    diaChi, soLuongMua, quyen);
			new KhachHangDAO().edit(maKH, kh);
		}else
			//chức năng thêm khách hàng
			if(chucNang.equals("Add")){
				String tenKH=request.getParameter("tenKH");
				String tenTKKH=request.getParameter("tkkh");
				String pass=request.getParameter("pass");
				String email=request.getParameter("email");
				String diaChi=request.getParameter("diachi");
				String sdt=request.getParameter("sdt");
				String ma="KH"+new KhachHangDAO().random(3000);
			KhachHang kh = new KhachHang(ma, tenKH, pass, sdt, tenTKKH);
			new KhachHangDAO().add( kh);
		}
		response.sendRedirect("myAccount.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
