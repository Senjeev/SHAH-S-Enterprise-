import static java.lang.System.out;
import java.sql.*; 
public class sign {
     public String authenticateUser(String user,String place,String number, String pass) throws ClassNotFoundException
     {
    	 String FName = user;
         String mail=place;
         String phnum=number;
         String Ps= pass;   	 
         try
         {
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/marble?zeroDateTimeBehavior=CONVERT_TO_NULL" ,"root","");
             Statement st=con.createStatement();
             PreparedStatement stmt = con.prepareStatement("insert into login(Username,Password,Email,Phonenumber) values('"+FName+"','"+Ps+"','"+mail+"','"+phnum+"')");
                         
             int i= stmt.executeUpdate();
             if (i!=0){  //Just to ensure data has been inserted into the database
                 return "SUCCESS"; 
         }
             else{
                return "Oops.. Something went wrong there..!"; 
             }
         }
             catch(SQLException e)
             {
                e.printStackTrace();
             }
         return "asdf";
         
     }
}