import java.sql.*; 
public class login{
     public String authenticateUser(String user, String pass) throws ClassNotFoundException
     { 
    	 
         String userName = user; 
         String password = pass;     	 
         String userNameDB = "";
         String passwordDB = ""; 
         try
         {
        	 Class.forName("com.mysql.jdbc.Driver");
     		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/marble?zeroDateTimeBehavior=CONVERT_TO_NULL" ,"root","");
     		 Statement stmt=con.createStatement(); 
             ResultSet rs = stmt.executeQuery("select * from login"); 
             while(rs.next()) // Until next row is present otherwise it return false
             {
              userNameDB = rs.getString(1); //fetch the values present in database
              passwordDB = rs.getString(2);
 
               if(userName.equals(userNameDB) && password.equals(passwordDB))
               {
                   String sql2="insert into currentuser(id) values('"+userNameDB+"')";
                   stmt.executeUpdate(sql2);
                  return "SUCCESS"; ////If the user entered values are already present in the database, which means user has already registered so return a SUCCESS message.
               }
               
             }
             if(userName.equals(userNameDB) || password.equals(passwordDB)){
                   return "Invalid User -- Sign Up";
               }
         }
             catch(SQLException e)
             {
                e.printStackTrace();
             }
         return null;
         
     }
}
    
