/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package dal;

import java.util.List;
import model.Account;
import model.Product;

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
        DAO a= new DAO();
        List<Product> p = a.getRandProduct();
        System.out.println(p.get(0).toString());
        
        Account acc = a.login("mai2123@gmail.com", "123");
        System.out.println(acc.toString());
    }
    
    
}
