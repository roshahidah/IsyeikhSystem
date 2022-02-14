<%-- 
    Document   : staffhome
    Created on : Feb 12, 2022, 4:44:08 PM
    Author     : User
--%>

<%@page import="java.sql.*"%>
<%@page import="util.PostConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>iSyeikh e-Repairing Status System</title>
        <jsp:include page="style.jsp"/>
        <style>
            
	</style>
    </head>
        
    <body>
        <h1>Welcome</h1>	<hr><br><br>
                <table>
            <%
                Connection con;
                try{
                    con = PostConnection.createConnection();
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM staff WHERE staffEmail = '" + request.getSession().getAttribute("email") + "'");
                    while(rs.next()){
            %>
                    <tr>
                        <td>Staff ID<br><br></td>
                        <td>:<br><br></td>
                        <td><center><%= rs.getInt("staffID") %><br><br></td>
                    </tr>
                    <tr>
                        <td>Name<br><br></td>
                        <td>:<br><br></td>
                        <td><center><%= rs.getString("staffName") %><br><br></td>
                    </tr>
                    <tr>
                        <td>IC Number<br><br></td>
                        <td>:<br><br></td>
                        <td><center><%= rs.getString("staffICNum") %><br><br></td>
                    </tr>
                    <tr>
                        <td>Mobile Number<br><br></td>
                        <td>:<br><br></td>
                        <td><center><%= rs.getString("staffPhoneNum") %><br><br></td>
                    </tr>
                    <tr>
                        <td>Address<br><br></td>
                        <td>:<br><br></td>
                        <td><center><%= rs.getString("staffAddress") %><br><br></td>
                    </tr>
                    <tr>
                        <td>Email<br><br></td>
                        <td>:<br><br></td>
                        <td><center><%= rs.getString("staffEmail") %><br><br></td>
                    </tr>
                </table>
            <%
                    }
                    con.close();
                } catch (Exception e) {
                e.printStackTrace();
                }
            %>
    </body>
</html>
