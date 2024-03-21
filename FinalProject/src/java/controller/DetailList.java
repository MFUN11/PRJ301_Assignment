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
import java.util.ArrayList;
import java.util.List;
import model.Order;
import model.OrderDetail;
import model.Product;

/**
 *
 * @author Admin
 */
public class DetailList extends HttpServlet {
   
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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DetailList</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DetailList at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
       DAO a= new DAO();
         String soid= request.getParameter("oid");
         int oid;
         try{
             oid=Integer.parseInt(soid);
            Order list = a.getOrderByID(oid);
        List<OrderDetail> listD = a.getAllOrderDetailByoID(oid);
        request.setAttribute("list", list);
        request.setAttribute("listD", listD);
         List<String> listN= new ArrayList<>();
         List<String> listI= new ArrayList<>();
        for(int i=0;i<listD.size();i++){
            String pname= a.getProductByID(listD.get(i).getPID()).getTitle();
            listN.add(pname);
            String image= a.getProductByID(listD.get(i).getPID()).getImage();
            listI.add(image);
        }
                String nameA= a.getAccByID(list.getaID()).getEmail();
                request.setAttribute("nameA", nameA);
                request.setAttribute("listN", listN);
                                request.setAttribute("listI", listI);

        request.getRequestDispatcher("detailList.jsp").forward(request, response);
         }catch(NumberFormatException e){
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
//            DAO a= new DAO();
//         String soid= request.getParameter("oid");
//         int oid;
//         try{
//             oid=Integer.parseInt(soid);
//             List<Order> list = a.getAllOrder();
//        List<OrderDetail> listD = a.getAllOrderDetailByoID(oid);
//        request.setAttribute("list", list);
//        request.setAttribute("listD", listD);
//         List<String> listN= new ArrayList<>();
//        for(int i=0;i<listD.size();i++){
//            String pname= a.getProductByID(listD.get(i).getPID()).getPName();
//            listN.add(pname);
//        }
//        request.getRequestDispatcher("orderList.jsp").forward(request, response);
//         }catch(NumberFormatException e){
//    System.out.println(e);
//    }
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
