package mvc;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Controller", urlPatterns = {"/Controller"})
public class Controller extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("id"); //lay gia tri
            String title = request.getParameter("title");
            String publisher = request.getParameter("publisher");
            String price = request.getParameter("price");

            magaine m = new magaine(id,title,publisher,Float.parseFloat(price));
            try {
                database dao = new database();
                if (!id.isEmpty() && !title.isEmpty()&& !publisher.isEmpty()&& !price.isEmpty()) {
                    dao.newMagazine(m);
                    System.out.print("New Magazine Inserted!!!");
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
                } else {
                     System.out.print("Fail");
                     RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
                rd.forward(request, response);
                }
            } catch (Exception e) {
                e.printStackTrace();
                 System.out.print("ERROR: " + e.getMessage());
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
