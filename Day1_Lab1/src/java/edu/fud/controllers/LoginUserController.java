package edu.fud.controllers;

import edu.fud.dao.UserDao;
import edu.fud.model.User;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoginUserController", urlPatterns = {"/LoginUserController"})
public class LoginUserController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        if (username != null && password != null && !username.equals("") && !password.equals("")) {
            try {
                UserDao dao = new UserDao();
                User user = dao.checkLogin(Integer.parseInt(username), password);

                if (user != null) {
                    HttpSession session = request.getSession();  //session la mot kieu ghi nho tren trinh duyet
                    session.setAttribute("user", user);

                    RequestDispatcher rd = request.getRequestDispatcher("ListUserController");
                    rd.forward(request, response);
                } else {
                    request.setAttribute("message", "Invalid username or password");
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    rd.forward(request, response);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            request.setAttribute("message", "Invalid username or password");
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
        }
    }

}
