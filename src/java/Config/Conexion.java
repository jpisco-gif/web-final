package Config;
import java.sql.*;

public class Conexion {
 Connection con;
  
 public Conexion()
 {
     try {
         String url="jdbc:mysql://localhost:3306/llamabus?zeroDateTimeBehavior=convertToNull&useSSL=false&useTimezone=true&serverTimezone=UTC";
         Class.forName("com.mysql.jdbc.Driver");
         con=(Connection) DriverManager.getConnection(url, "root", "");
         
     } catch (Exception e) {
         System.err.println("Error:"+e);
     }
 
 
 }
    
   public Connection getConnection()
   {
   return con;
   } 
    
}
