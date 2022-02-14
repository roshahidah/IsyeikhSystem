<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Device</title>
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
        <h1>Register Device</h1>
        <h4>Submit new device details below.</h4>
        <form action="StaffRegisterDeviceServlet" method="POST"> <br><br>
            <table class="center">
                <tr>
                    <td>Customer ID<br><br></td>
                    <td>:<br><br></td>
                    <td><input name="custID" type="number"  style="height:35px; width:300px; text-align:center" required><br><br></td>
                </tr>
                <tr>
                    <td>Device Model<br><br></td>
                    <td>:<br><br></td>
                    <td><input name="deviceModel" type="text" style="height:35px; width:300px; text-align:center" required><br><br></td>
                </tr>
                <tr>
                    <td>Device Details<br><br></td>
                    <td>:<br><br></td>
                    <td><input name="deviceDetails" type="text" style="height:35px; width:300px; text-align:center" required><br><br></td>
                </tr>
                <tr>
                    <td>Staff ID<br><br></td>
                    <td>:<br><br></td>
                    <td><input name="staffID" type="number" style="height:35px; width:300px; text-align:center" required><br><br></td>
                </tr>
            </table>
            <input type="submit" name="submit" value="Register Device">
        </form>
    </center>
    </body>

</html>
