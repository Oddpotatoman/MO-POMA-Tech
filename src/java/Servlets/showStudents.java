package Servlets;

import Classes.SqlHandler;
import Entities.Student;
import Entities.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author oddandre
 */
@WebServlet(name = "showStudents", urlPatterns = {"/showStudents"})
public class showStudents extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            //Check what type of user is signed in, Student or Teacher?
            User user = new User();
            String accessType = user.getUserType(request);
            request.setAttribute("accessType", accessType);
            
            //Get students and put thhem into an array to be sent to the jsp file
            SqlHandler sqlHdl = new SqlHandler(out);
            ResultSet rst = sqlHdl.getStudents();
            List<Student> students = new ArrayList();

            try {
                int rowCount = 0;
                    while(rst.next()) {   // Move the cursor to the next row, return false if no more row
                        Student student = new Student();
                        String fName = rst.getString("firstname");
                        String sName = rst.getString("surname");
                        String email = rst.getString("email");
                        Integer id = rst.getInt("user_id");

                        student.buildStudentForList(fName,sName,email,id);
                        students.add(student);

                        ++rowCount;
                     }  // end while
            }
            catch (SQLException ex) {
                out.println("Ikke hentet fra DB " +ex);
            }
            
            //Commit and close connection
            sqlHdl.commitAndclose();
            
            //Put data into the requset for the next page allowing us to use it.
            request.setAttribute("students", students);
            //Get the jsp file where we have put our html
            RequestDispatcher view = request.getRequestDispatcher("/Users/showStudents.jsp");
            //Send our data from request into the jsp file
            view.forward(request,response);
            
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
