/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Account {
    String aID;
    String name;
    String email;
    String pass;
    boolean role;

    public Account(String aID, String name, String email, String pass, boolean role) {
        this.aID = aID;
        this.name = name;
        this.email = email;
        this.pass = pass;
        this.role = role;
    }

    public Account() {
    }

    public String getaID() {
        return aID;
    }

    public void setaID(String aID) {
        this.aID = aID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public boolean isRole() {
        return role;
    }

    public void setRole(boolean role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Account{" + "aID=" + aID + ", name=" + name + ", email=" + email + ", pass=" + pass + ", role=" + role + '}';
    }
    
}
