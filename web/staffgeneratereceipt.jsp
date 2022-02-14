<%-- 
    Document   : staffgeneratereceipt
    Created on : Feb 14, 2022, 1:02:58 PM
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
            input[type=submit]{
                background-color: #88B06A;
                border: none;
                padding: 16px 32px;
                text-decoration: none;
                margin: 4px 2px;
                cursor: pointer;
                border-radius:5px;
                font-size: 15px;
            }
			
            table {
                font-size: 20px;
                table-layout: fixed;
            }
			
            input:hover, select:hover  {
                background-color: #88B06A;
                color: white;
            }
            input, select{
                border-radius:5px;
                border:1px solid grey;
            }
            input[type=text], input[type=number], input[type=date], select {
                height:35px; 
                width:300px; 
                border:1px solid grey; 
                text-align:center
            }
	</style>
    </head>
        
    <body>
        <center>
        <form action="StaffGenerateReceipt" method="post">

        <h1>Generate Receipt</h1>	<hr><br><br>
        <table>
            <%
                int deviceID = Integer.parseInt(request.getParameter("id"));
                Connection con;
                try{
                    con = PostConnection.createConnection();
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM device WHERE deviceID = " + deviceID);
                    while(rs.next()){
            %>
                    <tr>
                        <td>Device ID<br><br></td>
                        <td>:<br><br></td>
                        <td><center><%= deviceID %><br><br></td>
                    </tr>
                    <tr>
                        <td>Receipt Details<br><br></td>
                        <td>:<br><br></td>
                        <td><input type="text" name="recDetails" value="<%= rs.getString("deviceModel") %> <%= rs.getString("deviceRepair") %>"><br><br></td>
                    </tr>
                    
                    <input type="hidden" name="deviceID" value="<%= deviceID %>">
                    <input type="hidden" name="custID" value="<%= rs.getInt("custID") %>">
                    <input type="hidden" name="staffID" value="<%= rs.getInt("staffID") %>">
                    <tr>
                        <td>Date of Payment<br><br></td>
                        <td>:<br><br></td>
                        <td><input type="date" name="datePayment"><br><br></td>
                    </tr>
                    <tr>
                        <td>Total Payment<br><br></td>
                        <td>: RM<br><br></td>
                        <td><input type="text" name="totalPayment"><br><br></td>
                    </tr>
                    <tr>
                        <td>Method of Payment<br><br></td>
                        <td>:<br><br></td>
                        <td>
                            <select name="methodPayment" required="required">	
                                <option>Please Select Method of Payment</option>
                                <option value="Cash" style="color:black">Cash</option>
                                <option value="Online Banking" style="color:black">Online Banking</option>
                                <option value="Credit Card" style="color:black">Credit Card</option>
                            </select><br><br>
                        </td>
                    </tr>
                </table>
            <input type="submit" name="submit" value="Generate Receipt"></button>
        </form>
            <%
                    }
                    con.close();
                } catch (Exception e) {
                e.printStackTrace();
                }
            %>
                    
        </center>
    </body>
</html>
