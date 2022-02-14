package dao;

import bean.LoginBean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import util.PostConnection;

public class LoginDao {
    public String authenticateUser(LoginBean loginBean){
        
        String email = loginBean.getEmail();
        String password = loginBean.getPassword();
        
        Connection con;
        Statement statement;
        ResultSet resultSet;
        String emailDB;
        String passwordDB;
        
        try {
            con = PostConnection.createConnection();
            statement = con.createStatement();
            resultSet = statement.executeQuery("select staffEmail, staffPassword from staff");
            
            while (resultSet.next()) {
                emailDB = resultSet.getString("staffEmail");
                passwordDB = resultSet.getString("staffPassword");
                
                if (email.equals(emailDB) && password.equals(passwordDB)) {
                    return "SUCCESS";
                }
            }
        } catch (SQLException e) { }
        return "Invalid user credentials";
    }
    public String authenticateCust(LoginBean loginBean){
        
        String email = loginBean.getEmail();
        String password = loginBean.getPassword();
        
        Connection con;
        Statement statement;
        ResultSet resultSet;
        String emailDB;
        String passwordDB;
        
        try {
            con = PostConnection.createConnection();
            statement = con.createStatement();
            resultSet = statement.executeQuery("select custEmail, custPassword from customer");
            
            while (resultSet.next()) {
                emailDB = resultSet.getString("custEmail");
                passwordDB = resultSet.getString("custPassword");
                
                if (email.equals(emailDB) && password.equals(passwordDB)) {
                    return "SUCCESS";
                }
            }
        } catch (SQLException e) { }
        return "Invalid user credentials";
    }
}
