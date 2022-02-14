import bean.RepairBean;
import dao.RepairDao;
import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import util.PostConnection;

public class StaffAddStatusServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException { 
        
        String id = request.getParameter("deviceID");
        String repairStatus = request.getParameter("repairStatus");
        String overallRepair = request.getParameter("overallRepair");
        String dateRepair = request.getParameter("dateRepair");

        RepairBean repairBean = new RepairBean();
        
        int deviceID = Integer.parseInt(id);
        
        repairBean.setDeviceID(deviceID);
        repairBean.setRepairStatus(repairStatus);
        repairBean.setOverallRepair(overallRepair);
        repairBean.setDateRepair(dateRepair);
        
        int cid = 0, sid = 0;
        Connection con;
        
        try {
            con = PostConnection.createConnection();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT custID, staffID FROM device WHERE deviceID = " + deviceID);

            while(rs.next()) {
                cid = rs.getInt(1);
            }
            
            ResultSet rst = stmt.executeQuery("SELECT staffID FROM staff WHERE staffEmail = '" + request.getSession().getAttribute("email") + "'");

            while(rst.next()) {
                sid = rst.getInt(1);
            }
        } catch (SQLException e) { 
            System.out.print(e.getMessage());
        }    
        
        repairBean.setCustID(cid);
        repairBean.setStaffID(sid);
        
        
        RepairDao repairDao = new RepairDao();
        
        String userValidate = repairDao.insertRepair(repairBean);
        
        if(userValidate.equals("SUCCESS")){
            request.getRequestDispatcher("/staffaddstatus.jsp").forward(request, response);
        }
        else {
            request.setAttribute("errMsg", userValidate);
            request.getRequestDispatcher("/staffaddstatus.jsp").forward(request, response);
        }
    }
}
