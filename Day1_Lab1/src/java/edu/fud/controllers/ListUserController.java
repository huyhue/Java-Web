package edu.fud.controllers;

import edu.fud.dao.UserDao;
import edu.fud.helpers.SeesionHelper;
import edu.fud.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ListUserController", urlPatterns = {"/ListUserController"})
public class ListUserController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (SeesionHelper.validateLogin(request, response)) return;
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>List Information</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<ul>");
            try {
                UserDao dao = new UserDao();
                List<User> list = dao.findAll(); //lay tat ca nhung du lieu
                
                for (User user : list) {
                    String st = "%d - %s - %s - %s. ";
                    st += "<a href='EditUserController?username=%s'>Edit </a>" + " | "
                            + "<a href='DeleteUserController?username=%s'> Delete</a>";
                    st = String.format(st, user.getUsername(), user.getName(), user.getPassword(), user.isGender() ? "Male" : "Female", user.getUsername(), user.getUsername());
                    out.println("<li> " + st + "</li>");
                }
            } catch (Exception e) {
                e.printStackTrace();
                out.println("Error: " + e.getMessage());
            }
            out.println("</ul>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
