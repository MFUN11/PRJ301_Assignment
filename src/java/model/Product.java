/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Product {
    private String pID;
    private String pName;
    private String image;
    private float price;
    private String title;
    private String desc;
    private String cid;
    private int amount;

    @Override
    public String toString() {
        return "Product{" + "pID=" + pID + ", pName=" + pName + ", image=" + image + ", price=" + price + ", title=" + title + ", desc=" + desc + ", cid=" + cid + ", amount=" + amount + '}';
    }

    public Product() {
    }

    public Product(String pID, String pName, String image, float price, String title, String desc, String cid, int amount) {
        this.pID = pID;
        this.pName = pName;
        this.image = image;
        this.price = price;
        this.title = title;
        this.desc = desc;
        this.cid = cid;
        this.amount = amount;
    }

    public String getPID() {
        return pID;
    }

    public void setpID(String pID) {
        this.pID = pID;
    }

    public String getPName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    
    
    
}
