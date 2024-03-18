/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class Cart {

    List<Item> items;

    public Cart() {
        // cart trống => khởi tạo
        items = new ArrayList<>();
    }

    public Cart(List<Item> items) {
        this.items = items;
    }
    
    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }
    
    public int getQuantityById(String id) {
            Item item=getItemById(id);
            if(item !=null) return item.getQuantity();
            else return 1;
    }

    private Item getItemById(String id) {
        for (Item i : items) {
            if (i.getProduct().getPID().equalsIgnoreCase(id)) {
                return i;
            }
        }
        return null;
    }

    public void addItem(Item i) {
        if (getItemById(i.getProduct().getPID()) != null) {
            Item t = getItemById(i.getProduct().getPID());
            t.setQuantity(t.getQuantity() + i.getQuantity());
        } else {
            items.add(i);
        }

    }
    
    public void removeItem(String id){
        if(getItemById(id)!=null){
            items.remove(getItemById(id));
        }
    }
    public float getSubTotal(String id){
        float t=0;
            Item i= getItemById(id);
            t=i.getQuantity()*i.getProduct().getPrice();
        return t;
    }
    
    public float getTotal(){
        float t=0;
        for(Item i: items){
            t+=i.getQuantity()*i.getProduct().getPrice();
        }
        return t;
    }

}
