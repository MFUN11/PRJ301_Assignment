/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Admin;

/**
 *
 * @author Admin
 */
public class AdminDAO extends DBContext {
     public Admin check(String username, String password){
        String sql="SELECT [username]\n" +
"      ,[password]\n" +
"  FROM [dbo].[Admin]\n" +
"  where username=? and password=?";
        try{
               PreparedStatement st = connection.prepareStatement(sql);;
            st.setString(1,username);
            st.setString(2,password);
            ResultSet rs= st.executeQuery();
            if(rs.next()){
                Admin a = new Admin(rs.getString("Username"),
                                    rs.getString("Password"));
                return a;
            }
        }catch(Exception e){
            
        }
        return null;
        
    }
}
