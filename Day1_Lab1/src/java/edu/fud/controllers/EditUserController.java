package edu.fud.controllers;

import edu.fud.dao.UserDao;
import edu.fud.helpers.SeesionHelper;
import edu.fud.model.User;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "EditUserController", urlPatterns = {"/EditUserController"})
public class EditUserController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (SeesionHelper.validateLogin(request, response)) return;
        try {
            String username = request.getParameter("username");
            UserDao dao = new UserDao();
            User user = dao.findById(Integer.parseInt(username));

            if (user == null) {
                RequestDispatcher rd = request.getRequestDispatcher("ListUserController");
                rd.forward(request, response);
            } else {
                request.setAttribute("user", user); //Thiet lap nhung thuoc tinh 
                RequestDispatcher rd = request.getRequestDispatcher("editUser.jsp");
                rd.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        if (SeesionHelper.validateLogin(request, response)) return;
        try {
            UserDao dao = new UserDao();
            String username = request.getParameter("username");
            String name = request.getParameter("name");
            String password = request.getParameter("password");
            String gender = request.getParameter("gender");

            User user = new User();
            user.setUsername(Integer.parseInt(username));
            user.setName(name);
            user.setPassword(password);
            user.setGender(Boolean.parseBoolean(gender));
            dao.updateUser(user);

            RequestDispatcher rd = request.getRequestDispatcher("ListUserController");
            rd.forward(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
