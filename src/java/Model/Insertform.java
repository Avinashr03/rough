/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author KAAVIASUDHAN
 */
public class Insertform {
    Connection con1=null;
    Statement st=null;
      public void connectionjdbc(int score){
        int id=0;
         try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz?zeroDateTimeBehavior=CONVERT_TO_NULL","root","");
            st=con1.createStatement();
            
            String sql="select * from qcurrentuser;";
            ResultSet r=st.executeQuery(sql);
            while(r.next()){ 
                id=r.getInt("id");
            }
            
            Statement stmt31  = con1.createStatement();
	    stmt31.executeUpdate("UPDATE student set crctanswer = "+score+" where id = "+id);            
        }catch(Exception e){
            System.out.println(e);
        }           
    }    
}
