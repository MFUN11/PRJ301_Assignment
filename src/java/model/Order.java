/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Order {
    String oID;
    String aID;
    float total;

    public Order() {
    }

    public Order(String oID, String aID, float total) {
        this.oID = oID;
        this.aID = aID;
        this.total = total;
    }

    public String getoID() {
        return oID;
    }

    public void setoID(String oID) {
        this.oID = oID;
    }

    public String getaID() {
        return aID;
    }

    public void setaID(String aID) {
        this.aID = aID;
    }



    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "Order{" + "oID=" + oID + ", aID=" + aID + ", odID=" + ", total=" + total + '}';
    }

   
    

  
    
    
}
