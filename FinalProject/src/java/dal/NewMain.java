/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package dal;

import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Cart;
import model.Order;
import model.OrderDetail;
import model.Product;
import model.Item;

/**
 *
 * @author Admin
 */
public class NewMain {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        DAO a = new DAO();
        List<Product> list = a.getAllProduct();
//        int cnt=a.getTotalProduct();
//        int endPage=cnt/6;
//        System.out.println(endPage);
//        //System.out.println(p.get(0).toString());
//
//        Account acc = a.login("mai2123@gmail.com", "123");
//        System.out.println(acc.toString());
//       // a.insertOrder("2", (float) 10,"mp","add","01193","mame");
//        int id = a.getLatestOrderID();
//        OrderDetail od = new OrderDetail(a.getLatestOrderID(), list.get(0).getPID(), 2);
//System.out.println(id);
//       // a.insertDetails(od);
//               List<OrderDetail> listD = a.getAllOrderDetailByoID(2);
//         List<String> listN= new ArrayList<>();
//        for(int i=0;i<listD.size();i++){
//            String pname= a.getProductByID(listD.get(i).getPID()).getPName();
//            listN.add(pname);
//        }
//               List<Order> list1 = a.getAllOrder();
//               System.out.println(list1.get(0).getCname());
//               List<OrderDetail> list2 = a.getAllOrderDetail();
//               System.out.println(list2.get(0).getQuantity());
//               Product p= a.getProductByID("M1");
//               
//               System.out.println(listN.get(0));
//List<Product> listP = a.pagingProduct(2);
//        System.out.println(listP.get(0).toString());
//        Account n=a.getAccByID("2");
//        System.out.println(n.toString());


//Item i =new Item(list.get(0),3);
//Cart c= new Cart();
//c.addItem(i);
////        System.out.println(i.getQuantity());
////        System.out.println(c.getItems().get(0).getProduct());
////        System.out.println(c.getItemById("m1"));
//         System.out.println(c.getItems().get(0).getProduct());
//        System.out.println(c.getItemById("M1").getQuantity());
//        System.out.println(c.getQuantityById("M1"));
////int m =c.getQuantityById("M1");
////        System.out.println(m);


Product p= new Product("m1","11","w1",1,"a","a","c",1);
//list.add(p);
        Item i =new Item(list.get(0),3);
Cart c= new Cart();
c.addItem(i);
        System.out.println(i.getQuantity());
        System.out.println(c.getItems().get(0).getProduct());
 int k= c.getItemById("M1").getQuantity();
        System.out.println(k);
        System.out.println(c.getItemById("m1"));
        System.out.println(c.getQuantityById("m1"));
    }
            


}
