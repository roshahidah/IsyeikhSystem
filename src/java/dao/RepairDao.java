package dao;

import bean.RepairBean;
import java.sql.*;
import util.PostConnection;

public class RepairDao {
    public String insertRepair(RepairBean repairBean){
        
        int deviceID = repairBean.getDeviceID();
        int custID = repairBean.getCustID();
        int staffID = repairBean.getStaffID();
        String repairStatus = repairBean.getRepairStatus();
        String overallRepair = repairBean.getOverallRepair();
        String dateRepair = repairBean.getDateRepair();
                
        Connection con;
        
        try {
            con = PostConnection.createConnection();
            PreparedStatement pstmt = con.prepareStatement("INSERT INTO repair"
                + "(repairStatus, overallRepair, dateRepair, deviceID, custID, staffID)"
                + "VALUES (?,?,?,?,?,?)");
            pstmt.setString(1, repairStatus);
            pstmt.setString(2, overallRepair);
            pstmt.setString(3, dateRepair);
            pstmt.setInt(4, deviceID);
            pstmt.setInt(5, custID);
            pstmt.setInt(6, staffID);
            
            PreparedStatement stmt = con.prepareStatement(
                    "UPDATE device SET deviceStatus = ? WHERE deviceID = ?");
            stmt.setString(1, overallRepair);
            stmt.setInt(2, deviceID);
            stmt.executeUpdate();
            int i = pstmt.executeUpdate();
            
            if(i>0) {
                return "SUCCESS";
            } else {
                return "FAILED";
            }
        } catch (SQLException e) { 
            return e.getMessage();
        }
    }
}
