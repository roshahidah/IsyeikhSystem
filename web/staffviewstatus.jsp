<%-- 
    Document   : staffviewstatus
    Created on : Feb 14, 2022, 12:00:29 AM
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
                width:75%;
                table-layout: fixed;
                text-align: center;
                align: center;
                border: 1px solid #000000;
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
            <h1><b>View Status</b></h1>
            <hr><br>
            
            <table border='1px #green' align='center'>
                <tr>
                    <th width='7%' height='20'>Date</th>
                    <th width='10%'>Status</th>
                </tr>
                
            <%
                String id = request.getParameter("id");
                int deviceID = Integer.parseInt(id);
                Connection con;
                try{
                    con = PostConnection.createConnection();
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM repair WHERE deviceID = " + deviceID);
                    while(rs.next()){
            %>
                        <tr>
                            <td> <%= rs.getString("dateRepair") %> </td>
                            <td> <%= rs.getString("repairStatus") %>
                        </tr>   
            <%
                    }
                    con.close();
                } catch (Exception e) {
                e.printStackTrace();
                }
            %>
                
            </table><br>
            <form action="staffviewallstatus.jsp">
                <input style="background-color: #88B06A; height:34px; width:100px" type='submit' value='Back'>
            </form>
        </center>
    </body>
</html>
