<%-- 
    Document   : style
    Created on : Feb 12, 2022, 1:57:07 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
		
            .dropdown {
                float: left;
                overflow: hidden;
            }

            .dropdown .dropbtn {
                font-size: 20px;  
                border: none;
                outline: none;
                color: black;
                padding: 14px 20px;
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
                color: black;
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
                left: 0;
                width: 100%;
                bottom: 0;
                background-color: #88B06A;
                color: black;
                text-align: center;
                font-size: 18px;
            }

		/* Style buttons */
            .btn {
                background-color: #88B06A; 
                border: none; /* Remove borders */
                border-radius: 10px;
                color: white; /* White text */
                padding: 10px 10px; /* Some padding */
                font-size: 16px; /* Set a font size */
                cursor: pointer; /* Mouse pointer on hover */
            }

		/* Darker background on mouse-over */
            .btn:hover {
                background-color: #88B06A;
            }

            a:link, a:visited {
                background-color: #88B06A;
                color: black;
                padding: 10px 20px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                border-radius: 10px;
            }
		
	</style>
    </head>

    <div class="topnav">
        <a class="leftnav" href="staffhome.jsp">Home</a>
        <div class="dropdown">
            <button class="dropbtn">Customer</button>
            <div class="dropdown-content">
                <a class="leftnav" href="staffregistercustomer.jsp">Register Customer</a>
                <a class="leftnav" href="staffviewallcustomer.jsp">View All Customers</a>
            </div>
        </div>
        <div class="dropdown">
            <button class="dropbtn">Device</button>
            <div class="dropdown-content">
                <a class="leftnav" href="staffregisterdevice.jsp">Register Device</a>
                <a class="leftnav" href="staffviewalldevice.jsp">View All Devices</a>
            </div>
        </div>
        <div class="dropdown">
            <button class="dropbtn">Status</button>
            <div class="dropdown-content">
                <a class="leftnav" href="staffaddstatus.jsp">Add Status</a>
                <a class="leftnav" href="staffviewallstatus.jsp">View All Status</a>
            </div>
        </div>
        <a class="rightnav" href="logout.jsp">Log Out</a>
    </div>
    
    <div class="footer">
        <p> iSyeikh Device Kota Samarahan<br> <br>
            <a href="https://www.facebook.com/isyeikhdevicesamarahan/" target="_blank"><img src="facebook.png" style="width:35px; length:35px;"></i></a>
            <a href="https://www.instagram.com/isyeikhdevicehq/?hl=en" target="_blank"><img src="instagram.png" style="width:35px; length:35px;"></i></a>
        </p>
    </div>
</html>
