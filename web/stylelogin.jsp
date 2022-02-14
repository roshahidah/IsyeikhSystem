<%-- 
    Document   : stylelogin
    Created on : Feb 12, 2022, 9:25:59 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<style>
		 body {
                margin-bottom: 10px;
                padding-bottom: 150px;
                background-color: #FAF9F9;
                color: black;
            }

            /* Add a background color to the top navigation */
            .topnav {
                background-color: #88B06A;
                overflow: hidden;
            }

            .leftnav {
                float: left;
                color: black;
                text-align: center;
                padding: 14px 20px;
                margin-left: 15px;
                text-decoration: none;
                font-size: 20px;
            }
		
            .rightnav {
                float: right;
                color: black;
                text-align: center;
                padding: 14px 20px;
                margin-right: 15px;
                text-decoration: none;
                font-size: 20px;
            }
		input[type=submit], input[type=reset] {
			background-color: #88B06A;
			border: none;
			padding: 16px 32px;
			text-decoration: none;
			margin: 4px 2px;
			cursor: pointer;
			border-radius:5px;
			color:white;
		}
		
		input:hover {
			background-color: #05386B;
			color: white;
		}
		
		.footer {
			position: fixed;
			margin-top: 8px;
			padding: 8px;
			left: 0;
			width: 100%;
			bottom: 0;
			background-color: #88B06A;
			color: white;
			text-align: center;
			border-radius: none;
			font-size: 18px;
		}
	</style>
	</head>

	<div class="topnav">
			<a class="leftnav" href="stafflogin.jsp">Staff</a>
			<a class="leftnav" href="custlogin.jsp">Customer</a>
		</div>
		

	<div class="footer">
		<p> iSyeikh Device Kota Samarahan<br> <br>
			<a href="https://www.facebook.com/isyeikhdevicesamarahan/" target="_blank"><img src="pictures/facebook.png" style="width:35px; length:35px;"></i></a>
			<a href="https://www.instagram.com/isyeikhdevicehq/?hl=en" target="_blank"><img src="pictures/instagram.png" style="width:35px; length:35px;"></i></a>
		</p>
	</div>
</html>
