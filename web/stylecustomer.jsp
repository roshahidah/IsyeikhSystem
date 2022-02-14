<%-- 
    Document   : stylecustomer
    Created on : Feb 14, 2022, 5:17:03 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
	<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
		<style>
		body {
			margin-bottom: 10px;
			padding-bottom: 150px;
			background-color: #FAF9F9;
			color: #black;
		}
		
		/* Add a background color to the top navigation */
		.topnav {
			background-color:  #88B06A;
			overflow: hidden;
                        
		}
		
		.leftnav {
			float: left;
			color: black;
			text-align: center;
			padding: 14px 16px;
			margin-left: 15px;
			text-decoration: none;
			font-size: 20px;
		}
		
		.rightnav {
			float: right;
			color: black;
			text-align: center;
			padding: 14px 16px;
			margin-right: 15px;
			text-decoration: none;
			font-size: 20px;
		}
		
		.dropdown {
			float: left;
			overflow: hidden;
		}
	
		.dropdown .dropbtn {
			font-size: 20px;  
			border: none;
			outline: none;
			color: black;
			padding: 14px 16px;
			background-color: inherit;
			font-family: inherit;
			margin: 0;
		}
		
		.dropdown-content {
			display: none;
			position: absolute;
			background-color: #88B06A;
			min-width: 160px;
			box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
			z-index: 1;
		}
		
		.dropdown-content a {
			float: none;
			color: white;
			text-decoration: none;
			display: block;
			text-align: left;
		}
		
		/* Change the color of links on hover */
		.topnav a:hover, .dropdown .dropbtn:hover, .dropdown:hover, .dropdown-content a:hover {
			color: white;
		}
		
		.dropdown:hover .dropdown-content {
			display: block;
		}
		
		.footer {
			position: fixed;
			margin-top: 8px;
			padding: 8px;
			left: 0;
			width: 100%;
			bottom: 0;
			background-color: #88B06A;
			color: black;
			text-align: center;
			font-size: 18px;
		}
	</style>
	</head>

	<div class="topnav">
		<a class="leftnav" href="custhome.jsp">Home</a>
		<a class="leftnav" href="custviewallstatus.jsp">Device</a>
		<a class="rightnav" href="logoutServlet">Log Out</a>
	</div>
	
	<div class="footer">
		<p> iSyeikh Device Kota Samarahan<br> <br>
			<a href="https://www.facebook.com/isyeikhdevicesamarahan/" target="_blank"><img src="facebook.png" style="width:35px; length:35px;"></i></a>
			<a href="https://www.instagram.com/isyeikhdevicehq/?hl=en" target="_blank"><img src="instagram.png" style="width:35px; length:35px;"></i></a>
		</p>
	</div>
</html>
