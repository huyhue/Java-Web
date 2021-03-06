package servlet;

import dal.QuizDAO;
import dal.StudentDAO;
import dal.StudentQuizSessionDAO;
import dataobj.Quiz;
import dataobj.QuizSession;
import dataobj.Student;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/StudentEnterName")
public class StudentEnterNameServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        
        StudentDAO std = new StudentDAO();
        int studentId = std.insertStudentAndGetID(name);
        Student student = new Student(studentId, name);
        
        HttpSession session = request.getSession();
        session.setAttribute("student", student);
        
        QuizSession qs = (QuizSession) session.getAttribute("quizSession");
        
        QuizDAO quizDao = new QuizDAO();
        Quiz quiz = quizDao.getQuiz(qs.getId());
        session.setAttribute("quiz", quiz);
        
        StudentQuizSessionDAO sqsDao = new StudentQuizSessionDAO();
        sqsDao.insertStudentQuizSession(qs.getId(), studentId);
        
        response.sendRedirect(request.getContextPath() + "/ProgressQuizServlet");

    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
