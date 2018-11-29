/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Entities.Message;
import java.io.IOException;
import java.io.PrintWriter;

    

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mahamed Salad
 */
@WebServlet(name = "creatMessagePost", urlPatterns = {"/creatMessagePost"})
public class creatMessagePost extends HttpServlet {

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
            
            Integer message_Id = Integer.parseInt(request.getParameter("message_id"));
            
            Integer Sender = Integer.parseInt(request.getParameter("Sender"));
            Integer Reciever = Integer.parseInt(request.getParameter("reciever"));
            String datetime_message = request.getParameter("datetime_message");
            String Subject = request.getParameter("Subject");
            String Content = request.getParameter("Content");
            
            Message message = new Message();
            message.creatMessage(out, message_Id,Sender,Reciever,datetime_message,Subject,Content);
            response.sendRedirect("/MO-POMA-Tech/showMessages");
            

          
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
                 protected void doPost  (HttpServletRequest request, HttpServletResponse response)
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