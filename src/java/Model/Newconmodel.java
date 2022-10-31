/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 *
 * @author KAAVIASUDHAN
 */
public class Newconmodel {
    Connection con=null;
    Statement st=null;
     public void connectionjdbc(String fname, String lname, String country, String subject){
    
            try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_db?zeroDateTimeBehavior=CONVERT_TO_NULL","root","");
            st=con1.createStatement();
            String sql="insert into contact (firstname,lastname,country,subject) values('"+fname+"','"+lname+"','"+country+"','"+subject+"')";
            st.executeUpdate(sql);
            }
            catch(Exception e){
                System.out.println(e);
            }
    }

//    public void connectionjdbc(String fname, String lname, String country, String subject) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//    }
}
