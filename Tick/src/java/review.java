
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author 91887
 */
public class review {
     public String insert(String fname, String lname, String mail , String cmnt) throws ClassNotFoundException
     { 
        String FName =fname;
         String Lname=lname;
         String email=mail;
         String comment= cmnt;   	 
         try
         {
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/marble?zeroDateTimeBehavior=CONVERT_TO_NULL" ,"root","");
             Statement st=con.createStatement();
             PreparedStatement stmt = con.prepareStatement("insert into review(Firstname,Lastname,Email,Comment) values('"+FName+"','"+Lname+"','"+email+"','"+comment+"')");
                         
             int i= stmt.executeUpdate();
             if (i!=0){  //Just to ensure data has been inserted into the database
                 return "SUCCESS"; 
         }
             else{
                return "Invalid"; 
             }
         }
             catch(SQLException e)
             {
                e.printStackTrace();
             }    
     
          return null;
     
     
     }
    
}
