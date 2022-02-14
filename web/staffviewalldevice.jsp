<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="util.PostConnection"%>

<!DOCTYPE html>	
<html>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>View Devices</title>
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
	<body>
        <center>
            <h1><b>Device List</b></h1> <hr><br>
            
            <form method='post' action='StaffSearchDeviceServlet'>
            <table style="border: none;">
                <tr>
                    <td><input style="height:35px; width:400px; font-size:15px" type='number' name='search' placeholder='Enter Device ID'></td>
                    <td><input style="background-color: #88B06A; height:34px; width:100px" type='submit' value='Search'></td>
            </form>
            <form method='post' action='staffviewalldevice.jsp'>
                        <td><input style="background-color: #88B06A; height:34px; width:100px" type='submit' value='View All'></td>
                    </tr>
                </table>
            </form> <br>
            
            <table width="95%" align='center'>
                <tr>
                    <th width='10%' height='20'>Device ID</th>
                    <th width='10%'>Customer ID</th>
                    <th width='15%'>Device Model</th>
                    <th width='25%'>Device Details</th>
                    <th width='15%'>Device Status</th>
                    <th width='10%'>Staff ID</th>
                    <th width='20%'>OPTION</th>
                </tr>
            <%
                Connection con;
                try{
                    con = PostConnection.createConnection();
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM device ORDER BY deviceID DESC");
                    while(rs.next()){
            %>
                        <tr>
                            <td> <%= rs.getInt("deviceID") %> </td>
                            <td> <%= rs.getInt("custID") %> </td>
                            <td> <%= rs.getString("deviceModel") %> </td>
                            <td> <%= rs.getString("deviceRepair") %> </td>
                            <td> <%= rs.getString("deviceStatus") %> </td>
                            <td> <%= rs.getInt("staffID") %> </td>
                            <td><a href="staffgeneratereceipt.jsp?id=<%= rs.getInt("deviceID") %>" >Generate Receipt</a>
                                <a href="StaffDeleteStatusServlet?id=<%= rs.getInt("deviceID") %>" >Delete</a>
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
        </center>
	</body>
</html>