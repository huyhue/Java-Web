package edu.fud.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class productsDAO {

    public productsDAO() {
    }

    public List<Product> showProduct(String tenSP) throws Exception {
        try {
            //ket noi voi co so du lieu
            String connectionUrl = "jdbc:sqlserver://Localhost:1433;" + "databaseName=EMPDB;User=sa;Password=123456";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection(connectionUrl);
            //truy van de lay ten san pham
            String sql = "select * from Products";
            if (tenSP.length() > 0) {
                sql += "where Name like '%" + tenSP + "%' ";
            }
            //Tao truy van
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            List<Product> list = new ArrayList<Product>();
            while (rs.next()) {
                String code = rs.getString("Code");
                String name = rs.getString("Name");
                float price = rs.getFloat("Price");
                Product sp = new Product(code, name, price);                
                list.add(sp);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
}
