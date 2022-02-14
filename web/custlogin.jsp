<%-- 
    Document   : custlogin
    Created on : Feb 14, 2022, 2:47:24 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Login Page</title>
    </head>
    <body>
        <jsp:include page="stylelogin.jsp"/>
    <center>
        <h1>iSyeikh e-Repairing Device System</h1>
        <h2>Customer Login</h2>
        
        <form action="custLoginServlet" method="POST">
                    Email:<br>
                    <input type="text" name="custEmail" style="height:35px; width:300px; font-size:15px" required><br><br>
                
                    Password:<br>
                    <input type="password" name="custPassword" style="height:35px; width:300px; font-size:15px" required/><br><br>
        
                    <input type="submit" value="Login"/>
                    <input type="reset" value="Reset"/>
         
        </form>
        
    </center>
    </body>
</html>
