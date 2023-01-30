/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author 91887
 */

@WebServlet(name = "signup1", urlPatterns = {"/signup1"})
public class signup1 extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            /*out.println("<title>Servlet signup1</title>");*/            
            out.println("</head>");
            out.println("<body>");
        String FirstName = request.getParameter("name");
        String email=request.getParameter("email");
        String phonenumber = request.getParameter("phonenumber");
        String password = request.getParameter("pass"); 
        /*LoginBean loginBean = new LoginBean(); 
        loginBean.setUserName(userName); 
        loginBean.setPassword(password);
        LoginDao loginDao = new LoginDao();  */
        sign as= new sign();
        String userValidate = as.authenticateUser(FirstName,email,phonenumber, password);  
        if(userValidate.equals("SUCCESS")) 
        {
             request.setAttribute("userName", FirstName); 
             request.getRequestDispatcher("/Home.jsp").forward(request, response);
        }
        else
        {
            out.println(userValidate);
            /*request.setAttribute("errMessage", userValidate); 
            request.getRequestDispatcher("/Signup.jsp").forward(request, response);*/
        }
            /*out.println("<h1>Servlet signup1 at " + request.getContextPath() + "</h1>");*/
            out.println("</body>");
            out.println("</html>");
        } catch (Exception e) {
          System.out.println(e);
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
