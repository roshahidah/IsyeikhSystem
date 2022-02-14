<%-- 
    Document   : staffviewallstatus
    Created on : Feb 12, 2022, 9:20:10 PM
    Author     : User
        <sql:query var="device" dataSource="${myDS}">
            SELECT * FROM device;
        </sql:query>
            
        <c:forEach var="d" items="${device.rows}">
            <tr>
                <td><c:out value="${d.deviceID}" /></td>
                <sql:query var="cust" dataSource="${myDS}">
                    SELECT * FROM customer WHERE custID = <c:out value="${d.custID}" />
                </sql:query>
                <td><c:out value="${c.custName}" /></td>
                <td><c:out value="${d.deviceModel}" /></td>
                <td><c:out value="${d.deviceRepair}" /></td>
                <td><c:out value="${d.deviceStatus}" /></td>
                <td><c:out value="${d.staffID}" /></td>
            </tr>
        </c:forEach>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/isyeikh" user="root" password="" />
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
	</style>
    </head>
    <body>
        <center>
	<h1><b>View All Repairing Status</b></h1> <hr><br>
        
        <form method='post' action='StaffSearchRepairingStatus'>
            <table style="border: none;">
                <tr>
                    <td><input style="height:35px; width:400px; font-size:15px" type='number' name='search' placeholder='Enter Device ID'></td>
                    <td><input style="background-color: #88B06A; height:34px; width:100px" type='submit' value='Search'></td>
        </form>
        <form method='post' action='staffviewallstatus.jsp'>
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
                <th width='5%'>OPTION</th>
            </tr>

        <%
            Connection con;
            try{
                con = PostConnection.createConnection();
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM device");
                while(rs.next()){
        %>
                <tr>
                    <td> <%= rs.getInt("deviceID") %> </td>
                    <td> <%= rs.getInt("custID") %> </td>
                    <td> <%= rs.getString("deviceModel") %> </td>
                    <td> <%= rs.getString("deviceRepair") %> </td>
                    <td> <%= rs.getString("deviceStatus") %> </td>
                    <td> <%= rs.getInt("staffID") %> </td>
                    <td><a href="staffviewstatus.jsp?id=<%= rs.getInt("deviceID") %>" >View</a> 
                        
                    </td>
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
