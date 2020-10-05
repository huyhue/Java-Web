package sample.mvc;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Controller", urlPatterns = {"/Controller"})
public class Controller extends HttpServlet {

    final private String errorPage = "fail.jsp";
    final private String homePage = "index.jsp";
    final private String welcomePage = "welcome.jsp";
    final private String registerPage = "register.jsp";
    final private String showPage = "show.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String action = request.getParameter("btAction");
            if (action.equals("Login")) {
                String username = request.getParameter("txtUsername");
                String password = request.getParameter("txtPass");
                LoginBean login = new LoginBean();
                boolean result = login.checkLogin(username, password);
                String url = errorPage;
                if (result) {
                    HttpSession session = request.getSession(true);  //session la mot kieu ghi nho tren trinh duyet
                    session.setAttribute("USER", username);
                    url = welcomePage;
                }
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("tryAgain")) {
                RequestDispatcher rd = request.getRequestDispatcher(homePage);
                rd.forward(request, response);
            } else if (action.equals("register")) {
                RequestDispatcher rd = request.getRequestDispatcher(registerPage);
                rd.forward(request, response);
            } else if (action.equals("Register")) {
                String username = request.getParameter("txtUser");
                String password = request.getParameter("txtPass");
                String name = request.getParameter("txtName");
                String admin = request.getParameter("chkAdmin");
                boolean roles = false;
                if (admin != null) {
                    roles = true;
                }
                LoginBean login = new LoginBean();
                boolean result = login.insert(username, password, name, roles);
                RequestDispatcher rd = request.getRequestDispatcher(homePage);
                rd.forward(request, response);
            } else if (action.equals("Search")) {
                String ten = request.getParameter("txtSearch");
                LoginBean login = new LoginBean();
                LoginBean[] result = login.searchLikeLastname(ten);
                request.setAttribute("INFO", result);
                RequestDispatcher rd = request.getRequestDispatcher(showPage);
                rd.forward(request, response);
            } else if (action.equals("Delete")) {
                String username = request.getParameter("username");
                String ten = request.getParameter("txtSearch");
                LoginBean login = new LoginBean();
                login.setUsername(username);
                boolean result = login.deleteRecord();
                String url = "Controller?btAction=Search&txtSearch=" + ten;
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("Update")) {
                String username = request.getParameter("txtUsername");
                String name = request.getParameter("txtName");
                String admin = request.getParameter("chkAdmin");
                boolean roles = false;
                if (admin != null) {
                    roles = true;
                }
                String ten = request.getParameter("txtSearch");
                LoginBean login = new LoginBean(username, name, roles);
                boolean result = login.updateRecord();
                String url = "Controller?btAction=Search&txtSearch=" + ten;
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("Back")) {
                RequestDispatcher rd = request.getRequestDispatcher(welcomePage);
                rd.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            out.close();
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
