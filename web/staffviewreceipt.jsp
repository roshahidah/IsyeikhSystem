<%-- 
    Document   : staffviewreceipt
    Created on : Feb 14, 2022, 6:28:06 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="util.PostConnection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>iSyeikh e-Repairing Status System</title>
        <jsp:include page="style.jsp"/>
        <style>
            table{
                width: 50%;
                table-layout: fixed;
                text-align: center;
                align: center;
                border-collapse: collapse;
            }
	</style>
    </head>
    <body>
        <center>
            <h1><b>Receipt</b></h1>
            <hr><br>
            
            <table align='center'>
                
            <%
                String id = request.getParameter("id");
                int deviceID = Integer.parseInt(id);
                Connection con;
                try{
                    con = PostConnection.createConnection();
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM receipt WHERE deviceID = " + deviceID);
                    while(rs.next()){
            %>
                    <tr>
                        <td width="30%">Receipt No:<br><br></td>
                        <td width="1%">:<br><br></td>
                        <td><center> <%= rs.getString("recNo") %><br><br></td>
                    </tr>
                    <tr>
                        <td>Receipt Details<br><br></td>
                        <td>:<br><br></td>
                        <td><%= rs.getString("recDetails") %><br><br></td>
                    </tr>  
                    <tr>
                        <td>Date of Payment<br><br></td>
                        <td>:<br><br></td>
                        <td><%= rs.getString("datePayment") %><br><br></td>
                    </tr> 
                    <tr>
                        <td>Total Payment<br><br></td>
                        <td>:<br><br></td>
                        <td>RM<%= rs.getDouble("totalPayment") %><br><br></td>
                    </tr> 
                    <tr>
                        <td>Method of Payment<br><br></td>
                        <td>:<br><br></td>
                        <td><%= rs.getString("methodPayment") %><br><br></td>
                    </tr> 
            <%
                        ResultSet rst = stmt.executeQuery("SELECT staffName FROM staff WHERE staffID = " + rs.getInt("staffID"));
                        while(rst.next()){
            %>    
                            <tr>
                                <td>Issued by<br><br></td>
                                <td>:<br><br></td>
                                <td><%= rst.getString("staffName") %><br><br></td>
                            </tr> 
            <%          }
                    }
                    con.close();
                } catch (Exception e) {
                e.printStackTrace();
                }
            %>
                
            </table><br>
            <form action="staffviewalldevice.jsp">
                <input style="background-color: #88B06A; height:34px; width:100px" type='submit' value='Back'>
            </form>
        </center>
    </body>
</html>

