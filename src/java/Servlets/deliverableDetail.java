/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Entities.Deliverable;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author Petr
 */
@WebServlet(name = "deliverableDetail", urlPatterns = {"/deliverableDetail/*"})
public class deliverableDetail extends HttpServlet {

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
            // Get the path after the url, anything after /showstudent/ will show here. In this case /showstudent/{studentId}
            String path = request.getPathInfo();
            // getPathInfo includes the / after showStudent, remove it
            String requestedDeliverable = path.replace("/", "");
            //Create a sqlHandler to run database queries
            //SqlHandler sqlHdl = new SqlHandler(out);
            //Queries return as ResultSets so we have to store it as such
            //ResultSet rst = sqlHdl.getStudent(requestedStudent);
            
            //We will return the student in the form of a ArrayList, this could be done better as there is only one user
            List<Deliverable> deliverable = new ArrayList();
            Deliverable delObj = new Deliverable();
            delObj.getDeliverableDetail(Integer.parseInt(requestedDeliverable), out);
            deliverable.add(delObj);
            //Put data into the requset for the next page allowing us to use it.
            request.setAttribute("deliverable", deliverable);
            //Get the jsp file where we have put our html
            RequestDispatcher view = request.getRequestDispatcher("/Users/deliverableDetail.jsp");
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
        return "A servlet to get a students information";
    }// </editor-fold>

}