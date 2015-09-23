import java.sql.*;

/**
 * @author Chrysostomos Chatzigeorgiou
 * hrhatzig@gmail.com
 * Hum Call 2014-2015
 */

public class Validate
 {
 
     public static boolean checkUser(String email,String pass) 
     {
      boolean st =false;
      try{

	 //loading driver 
         Class.forName("com.mysql.jdbc.Driver");

 	 //creating connection with the database 
         Connection con=DriverManager.getConnection
                        ("jdbc:mysql://localhost:3306/hum_call","hrhatzig","1234");
         PreparedStatement ps =con.prepareStatement
                             ("select * from Student where email=? and pass=?");
         ps.setString(1, email);
         ps.setString(2, pass);
         ResultSet rs =ps.executeQuery();
         st = rs.next();
        
      }catch(Exception e)
      {
          e.printStackTrace();
      }
         return st;                 
  }   
}