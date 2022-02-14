<%-- 
    Document   : staffviewallstatus
    Created on : Feb 13, 2022, 9:20:10 PM
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
        <jsp:include page="stylecustomer.jsp"/>
        <style>
            table{
                table-layout: fixed;
                text-align: center;
                align: center;
                border-collapse: collapse;
            }
            th {
                background-color: #88B06A; 
                vertical-align : middle;
                padding: 10px;
            }
            td {
                vertical-align : middle;
                padding: 6px;
            }

            a:link, a:visited {
                background-color: #88B06A;
                color: black;
                padding: 10px 20px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                border-radius: 10px;
            }
	</style>
    </head>
    <body>
        <center>
	<h1><b>Device List</b></h1> <hr><br>
        
        <form method='post' action='CustSearchRepairingStatus'>
            <table style="border: none;">
                <tr>
                    <td><input style="height:35px; width:400px; font-size:15px" type='number' name='search' placeholder='Enter Device ID'></td>
                    <td><input style="background-color: #88B06A; height:34px; width:100px" type='submit' value='Search'></td>
        </form>
        <form method='post' action='custviewallstatus.jsp'>
                    <td><input style="background-color: #88B06A; height:34px; width:100px" type='submit' value='View All'></td>
                </tr>
            </table>
        </form><br>
        
        <table width="95%" align='center'>
            <tr>
                <th width='5%' height='20'>Device ID</th>
                <th width='10%'>Customer ID</th>
                <th width='10%'>Device Model</th>
                <th width='10%'>Device Details</th>
                <th width='10%'>Device Status</th>
                <th width='10%'>Staff ID</th>
                <th width='10%'>OPTION</th>
            </tr>

        <%
            int custID = 0;
            Connection con;
            try{
                con = PostConnection.createConnection();
                Statement stmt = con.createStatement();
                
                ResultSet rst = stmt.executeQuery("SELECT custID FROM customer WHERE custEmail = '" + request.getSession().getAttribute("custEmail") + "'");

                while(rst.next()) {
                    custID = rst.getInt(1);
                }
                 
                ResultSet rs = stmt.executeQuery("SELECT * FROM device WHERE custID =" + custID); 
                while(rs.next()){
        %>
                
        <tr>
                    <td> <%= rs.getInt("deviceID") %> </td>
                    <td> <%= rs.getInt("custID") %> </td>
                    <td> <%= rs.getString("deviceModel") %> </td>
                    <td> <%= rs.getString("deviceRepair") %> </td>
                    <td> <%= rs.getString("deviceStatus") %> </td>
                    <td> <%= rs.getInt("staffID") %> </td>
                    <td><a href="custviewstatus.jsp?id=<%= rs.getInt("deviceID") %>" >Status</a>
                        <a href="custviewreceipt.jsp?id=<%= rs.getInt("deviceID") %>" >Receipt</a></td>
                </tr>   
        <%
                }
                con.close();
            } catch (Exception e) {
            e.printStackTrace();
            }
        %>
        </table>
        
    </body>
</html>
