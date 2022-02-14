<%-- 
    Document   : staffaddstatus
    Created on : Feb 12, 2022, 5:02:19 PM
    Author     : User
--%>

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
		
	</style>
    </head>
        
    <body>
        
        <center>
        <form action="StaffAddStatusServlet" method="post">

        <h1>New Repairing Status</h1>	<hr><br><br>
            <table>
                <tr>
                    <td>Device ID<br><br></td>
                    <td>:<br><br></td>
                    <td><input type="number" style="height:35px; width:300px; border:1px solid grey; text-align:center" name="deviceID"><br><br></td>
                </tr>
                <tr>
                    <td>New Status<br><br></td>
                    <td>:<br><br></td>
                    <td>
                        <select name="repairStatus" style="height:35px; width:300px; color:black" required="required">	
                            <option>Please Select Repairing Status</option>
                            <option value="Device ready to be repair" style="color:black">Device ready to be repair</option>
                            <option value="Repairing re-attempted" style="color:black">Repairing re-attempted</option>
                            <option value="Repairing failed" style="color:black">Repairing failed</option>
                            <option value="Repairing completed" style="color:black">Repairing completed</option>
                            <option value="Waiting for pickup" style="color:black">Waiting for pickup</option>
                            <option value="Payment has been done" style="color:black">Payment has been done</option>
                        </select><br><br>
                    </td>
                </tr>
                <tr>
                    <td>Status<br><br></td>
                    <td>:<br><br></td>
                    <td>
                        <select name="overallRepair" style="height:35px; width:300px; color:black" required="required">	
                            <option>Please Select Overall Status</option>
                            <option value="Ongoing" style="color:black">Ongoing</option>
                            <option value="Completed" style="color:black">Completed</option>
                            <option value="Failed" style="color:black">Failed</option>
                            <option value="Payment Received" style="color:black">Payment received</option>
                        </select><br><br>
                    </td>
                </tr>
                <tr>
                    <td>Date</td>
                    <td>:</td>
                    <td><input style="height:35px; width:300px; font-size:15px" type="date" name="dateRepair" value="requestDate"></td>
                </tr>
            </table><br><br>
            <input type="submit" name="submit" value="Save Status"></button>
        </form>
        </center>
        
    </body>
</html>

