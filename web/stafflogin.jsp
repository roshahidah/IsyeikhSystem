<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>iSyeikh e-Repairing Status System</title>
    </head>
    <body>
    <center>
        
        <h1>iSyeikh Staff Dashboard!</h1>
        
        <form action="StaffLoginServlet" method="POST">
            <table>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" name="email"/></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="text" name="password"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Reset"/>
                    </td>
                </tr>
            </table>
        </form>
        
    </center>
    </body>
</html>
