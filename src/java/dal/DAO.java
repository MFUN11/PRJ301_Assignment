/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Category;
import model.Order;
import model.OrderDetail;
import model.Product;

/**
 *
 * @author Admin
 */
public class DAO extends DBContext {

    PreparedStatement stm;
    ResultSet rs;

   public void update(Product c) {
    String sql = "UPDATE [dbo].[Product] " +
                 "SET pName=?, image=?, price=?, title=?, [desc]=?, cID=?, amount=? " +
                 "WHERE pID=?";
    try {
        PreparedStatement st = connection.prepareStatement(sql);
        st.setString(1, c.getPName());
        st.setString(2, c.getImage());
        st.setFloat(3, c.getPrice());
        st.setString(4, c.getTitle());
        st.setString(5, c.getDesc());
        st.setString(6, c.getCid());
        st.setInt(7, c.getAmount());
        st.setString(8, c.getPID());
        st.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}


    public void insertProduct(Product c) {
        String sql = "insert into Product values(?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, c.getPID());
            st.setString(2, c.getPName());
            st.setString(3, c.getImage());
            st.setFloat(4, c.getPrice());
            st.setString(5, c.getTitle());
            st.setString(6, c.getDesc());
            st.setString(7, c.getCid());
            st.setInt(8, c.getAmount());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
        public void insertOrder(OrderDetail c) {
        String sql = "insert into Order values(?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, c.getOID());
            st.setString(2, c.getPID());
            st.setInt(3, c.getQuantity());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        try {
            String strSelect = "select * from Product";
            stm = connection.prepareStatement(strSelect);
            rs = stm.executeQuery();
            while (rs.next()) {
                Product pr = new Product(rs.getString("pID"), rs.getString("pName"), rs.getString("image"), rs.getFloat("price"), rs.getString("title"), rs.getString("desc"), rs.getString("cid"), rs.getInt("amount"));
                list.add(pr);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Category> getAllCate() {
        List<Category> list = new ArrayList<>();
        try {
            String strSelect = "select * from Category";
            stm = connection.prepareStatement(strSelect);
            rs = stm.executeQuery();
            while (rs.next()) {
                Category pr = new Category(rs.getString("cID"), rs.getString("cName"));
                list.add(pr);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductByCID(String cid) {
        List<Product> list = new ArrayList<>();
        try {
            String strSelect = "select * from Product where cID=?";
            stm = connection.prepareStatement(strSelect);
            stm.setString(1, cid);
            rs = stm.executeQuery();
            while (rs.next()) {
                Product pr = new Product(rs.getString("pID"), rs.getString("pName"), rs.getString("image"), rs.getFloat("price"), rs.getString("title"), rs.getString("desc"), rs.getString("cid"), rs.getInt("amount"));
                list.add(pr);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getProductByID(String pid) {

        try {
            String strSelect = "select * from Product where pID=?";
            stm = connection.prepareStatement(strSelect);
            stm.setString(1, pid);
            rs = stm.executeQuery();
            while (rs.next()) {
                Product pr = new Product(rs.getString("pID"), rs.getString("pName"), rs.getString("image"), rs.getFloat("price"), rs.getString("title"), rs.getString("desc"), rs.getString("cid"), rs.getInt("amount"));
                return pr;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;

    }

    public List<OrderDetail> getAllCart() {
        List<OrderDetail> list = new ArrayList<>();
        try {
            String strSelect = "select * from OrderDetail";
            stm = connection.prepareStatement(strSelect);
            rs = stm.executeQuery();
            while (rs.next()) {
                OrderDetail pr = new OrderDetail(rs.getString("odID"), rs.getString("pID"), rs.getInt("quantity"));
                list.add(pr);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void insert(Order c) {
        String sql = "insert into Order values(?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, c.getoID());
            st.setString(2, c.getaID());
            st.setFloat(3, c.getTotal());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Account login(String user, String pass) {
        String sql = "select * from Account where email=? and pass=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, user);
            st.setString(2, pass);
            rs = st.executeQuery();
            while (rs.next()) {
                Account pr = new Account(rs.getString("aID"), rs.getString("name"), rs.getString("email"), rs.getString("pass"), rs.getBoolean("role"));
                return pr;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void register(String user, String pass, String name) {
        String sql = "INSERT INTO Account (name, email, pass,role) VALUES (?,?,?,0);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, user);
            st.setString(3, pass);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public Account isExist(String user) {
        String sql = "SELECT * FROM Account WHERE email=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            ResultSet rs = st.executeQuery(); // Use 'st' here instead of 'stm'
            while (rs.next()) {
                Account pr = new Account(rs.getString("aID"), rs.getString("name"), rs.getString("email"), rs.getString("pass"), rs.getBoolean("role"));
                return pr;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Product> getRandProduct() {
        List<Product> list = new ArrayList<>();
        try {
            String strSelect = "select top 2 * from Product order by amount desc";
            stm = connection.prepareStatement(strSelect);
            rs = stm.executeQuery();
            while (rs.next()) {
                Product pr = new Product(rs.getString("pID"), rs.getString("pName"), rs.getString("image"), rs.getFloat("price"), rs.getString("title"), rs.getString("desc"), rs.getString("cid"), rs.getInt("amount"));
                list.add(pr);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void delete(String id) {
        String sql = "DELETE FROM [dbo].[Product]\n"
                + "      WHERE pID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

}
