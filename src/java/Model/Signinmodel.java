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
public class Signinmodel {
    Connection con1=null;
    Statement st=null;
    private static int check=0;
    private static int id=0;
    
    public int getcheck(){
        
        return check;
    }
    
    public void connectionjdbc(String name, String password){
       
        String id1=null;
        String id2=null;
        
    
            try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz?zeroDateTimeBehavior=CONVERT_TO_NULL","root","");
            st=con1.createStatement();
           String s="select * from student where username='"+name+"'";
           
            ResultSet r=st.executeQuery(s);
            while(r.next()){
                id1=r.getString("username");
                id=r.getInt("id");
                id2=r.getString("password");
                
               
            }
             if(id1.equals(name) && id2.equals(password)){
                    check=1;
                    String s1="insert into qcurrentuser(id) values("+id+");";
                    st.executeUpdate(s1);

                }
            }
            
            catch(Exception e){
                

            }
           
      
    }
}
