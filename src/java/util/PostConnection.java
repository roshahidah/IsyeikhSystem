package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class PostConnection {
        
    public static Connection createConnection() {
        Connection con = null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");   
        }
        catch(ClassNotFoundException e){
        }
        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/isyeikh","root","");
        } catch (SQLException ex) {
        }
        return con;
    }
}
