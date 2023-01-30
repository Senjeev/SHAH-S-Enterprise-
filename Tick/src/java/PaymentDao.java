
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
class PaymentDao {
    
    public static Exception registerPayment(Payment payment) throws ClassNotFoundException, SQLException {
        
        System.out.println("1");
        //System.out.println(firstName);
       /* String INSERT_USERS_SQL = "INSERT INTO payment" +
            "  (userid, psroductname, price) VALUES " +
            " (?, ?, ?);";*/
String id=null;
        int result = 0;
String sql3="select * from currentuser";
        

       /* try (
                 
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/marble?zeroDateTimeBehavior=CONVERT_TO_NULL", "root", "");
Statement stmt=connection.createStatement(); 
                ResultSet rs = stmt.executeQuery("select * from currentuser"); 
                
                
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
          
            preparedStatement.setInt(1, Integer.valueOf(payment.getUserId()));
            preparedStatement.setString(2, payment.getProName());
            preparedStatement.setString(3, payment.getPrice());
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }*/
       try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/marble?zeroDateTimeBehavior=CONVERT_TO_NULL", "root", "");
Statement stmt=connection.createStatement(); 
ResultSet rs = stmt.executeQuery("select * from currentuser");
while(rs.next()){
    id=rs.getString("id");
}
String sql4="insert into payment(userid,productname,price) values('"+id+"','"+payment.getProName()+"','"+payment.getPrice()+"')";
stmt.executeUpdate(sql4);


       }
       catch(Exception e){
           return e;
       }
        return null;
    }

    private void printSQLException(SQLException e) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
