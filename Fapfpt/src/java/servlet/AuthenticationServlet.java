package servlet;

import dal.UserDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AuthenticationServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UserDAO userDao = new UserDAO();
        String checkPassword = userDao.getPassword(username);
        String fullName = userDao.getFullName(username);
        if (password.equals(checkPassword)) {
            request.setAttribute("username", username);
            request.setAttribute("fullname", fullName);
            request.getRequestDispatcher("ShowAllStudent.jsp").forward(request,response);
        } else {
            System.out.println("false");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
