import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import util.PostConnection;

public class StaffSearchRepairingStatus extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("/style.jsp").include (request,response);
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>iSyeikh e-Repairing Status System</title>"); 
        out.println("<style>\n" +
            "            table{\n" +
            "                table-layout: fixed;\n" +
            "                text-align: center;\n" +
            "                align: center;\n" +
            "                border-collapse: collapse;\n" +
            "            }\n" +
            "            th {\n" +
            "                background-color: #88B06A; \n" +
            "                vertical-align : middle;\n" +
            "                padding: 10px;\n" +
            "            }\n" +
            "            td {\n" +
            "                vertical-align : middle;\n" +
            "                padding: 6px;\n" +
            "            }\n" +
            "       </style>"); 
        out.println("</head>");
        out.println("<body>");
        out.println("<center>");
        out.println("<h1><b>View All Repairing Status</b></h1> <hr><br>");
        
        out.println("<form method='post' action='StaffSearchRepairingStatus'>");
        out.println("   <table style=\"border: none;\">");
        out.println("       <tr>");
        out.println("           <td><input style=\"height:35px; width:400px; font-size:15px\" type='number' name='search' placeholder='Enter Device ID'></td>\n" +
                    "           <td><input style=\"background-color: #88B06A; height:34px; width:100px\" type='submit' value='Search'></td>");
        out.println("</form>");
        out.println("<form method='post' action='staffviewallstatus.jsp'>");
        out.println("           <td><input style=\"background-color: #88B06A; height:34px; width:100px\" type='submit' value='View All'></td>");
        out.println("       </tr>\n" +
                    "   </table>\n" +
                    "</form><br>");
        
        out.println("<table width=\"95%\" align='center'>\n" +
                        "<tr>\n" +
                        "<th width='5%' height='20'>Device ID</th>\n" +
                        "<th width='10%'>Customer ID</th>\n" +
                        "<th width='10%'>Device Model</th>\n" +
                        "<th width='10%'>Device Details</th>\n" +
                        "<th width='10%'>Device Status</th>\n" +
                        "<th width='10%'>Staff ID</th>\n" +
                        "<th width='10%'>OPTION</th>\n" +
                        "</tr>");
        
        String id = request.getParameter("search");
        int deviceID = Integer.parseInt(id);
        
            Connection con;
                try{
                    con = PostConnection.createConnection();
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM device WHERE deviceID = " + deviceID);
                    while(rs.next()){
                        out.println("<tr>");
                        out.println("   <td>" + rs.getInt("deviceID") + "</td>");
                        out.println("   <td>" + rs.getInt("custID") + "</td>");
                        out.println("   <td>" + rs.getString("deviceModel") + "</td>");
                        out.println("   <td>" + rs.getString("deviceRepair") + "</td>");
                        out.println("   <td>" + rs.getString("deviceStatus") + "</td>");
                        out.println("   <td>" + rs.getInt("staffID") + "</td>");
                        out.println("   <td><a href='staffviewstatus.jsp?id=" + rs.getInt("deviceID") + "'>View</a> \n");
                        out.println("       <a href='StaffDeleteStatusServlet?id=" + rs.getInt("deviceID") + "' >Delete</a></td>");
                        out.println("</tr>");
                    }
                    con.close();
                } catch (SQLException e) {
                }
        out.println("");
        out.println("");        
        out.println("</body>");
        out.println("</html>");
        
    }
}
