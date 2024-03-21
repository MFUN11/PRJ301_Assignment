/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import java.util.Random;
import model.Account;
import model.Cart;
import model.Item;
import model.Order;
import model.OrderDetail;

/**
 *
 * @author Admin
 */
public class OrderServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           HttpSession session=request.getSession();
        out.print(session.getAttribute("cart").toString());
                }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        DAO a= new DAO();
        String name = request.getParameter("name");
        String address= request.getParameter("address");
        String phone= request.getParameter("phone");
        String email= request.getParameter("email");
  
        
        HttpSession session=request.getSession();
        Cart cart= (Cart)session.getAttribute("cart");
        Account acc= (Account)session.getAttribute("acc");
        List<Item> list= cart.getItems();
           a.insertOrder(acc.getaID(),cart.getTotal(),name,address,phone,email);
          int oID= a.getLatestOrderID();
          for(int i=0;i<list.size();i++){
              OrderDetail od= new OrderDetail(oID,list.get(i).getProduct().getPID(),list.get(i).getQuantity());
         a.insertDetails(od);
          }
session.removeAttribute("cart");        
session.removeAttribute("size");          

          response.sendRedirect("index.jsp");
          
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
