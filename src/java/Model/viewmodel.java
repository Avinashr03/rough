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
public class viewmodel {
    Connection con1=null;
    Statement st=null;
    public int view(){
        int score=0;
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
            String sql2="select * from student where id="+id;
            ResultSet r1=st.executeQuery(sql2);
            while(r1.next()){
                score=r1.getInt("crctanswer");
                
            }
            
        }
        catch(Exception e){
            System.out.println(e);
            
        }
        return score;
    }
}
