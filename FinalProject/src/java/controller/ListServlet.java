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
import java.util.List;
import model.Category;
import model.Product;

/**
 *
 * @author Admin
 */
public class ListServlet extends HttpServlet {
   
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
       DAO a = new DAO();
       List<Product> list = a.getAllProduct();
        int cnt=a.getTotalProduct();
       int endPage=cnt/6;
       if(cnt%6!=0){
           endPage++;
       }
       request.setAttribute("lend", endPage);
       request.setAttribute("list", list);
       request.getRequestDispatcher("shop.jsp").forward(request, response);
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
               DAO a = new DAO();
          String index= request.getParameter("index");
          if(index==null){
              index="1";
          }
          int page;
 try{
       page=Integer.parseInt(index);
         List<Product> list = a.pagingProduct(page);
       List<Category> listC= a.getAllCate();
       int cnt=a.getTotalProduct();
       int endPage=cnt/6;
       if(cnt%6!=0){
           endPage++;
       }
              request.setAttribute("lend", endPage);
       request.setAttribute("list", list);
        request.setAttribute("listC", listC);
       request.getRequestDispatcher("shop.jsp").forward(request, response);   
    }
 
          catch(NumberFormatException e){
              System.out.println(e);
          }
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
