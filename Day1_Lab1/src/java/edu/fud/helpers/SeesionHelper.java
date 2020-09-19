package edu.fud.helpers;

import edu.fud.model.User;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SeesionHelper {

    public static boolean validateLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User usr = (User) session.getAttribute("user");
        if (usr == null) {
            RequestDispatcher rd = request.getRequestDispatcher("LoginUserController");
            rd.forward(request, response);
            return true;
        }
        return false;
    }
}
