package dao;

import bean.DeviceBean;
import java.sql.*;
import util.PostConnection;

public class DeviceDao {
    public String registerDevice(DeviceBean deviceBean){
        
        Connection conn;
        
        int custID = deviceBean.getCustID();
        String deviceModel = deviceBean.getDeviceModel();
        String deviceRepair = deviceBean.getDeviceRepair();
        String deviceStatus = deviceBean.getDeviceStatus();
        int staffID = deviceBean.getStaffID();
        
        try{
            conn = PostConnection.createConnection();
            PreparedStatement pstmt = conn.prepareStatement("INSERT INTO device " + 
                    "(custID,deviceModel,deviceRepair,deviceStatus,staffID) VALUES (?,?,?,?,?)");
            pstmt.setInt(1,custID);
            pstmt.setString(2,deviceModel);
            pstmt.setString(3,deviceRepair);
            pstmt.setString(4,deviceStatus);
            pstmt.setInt(5,staffID);
            
            int i = pstmt.executeUpdate();
            if(i>0){
                return "SUCCESS";
            }
            else{
                return "FAIL";
            }
            
        
        }catch(SQLException e){
            return e.getMessage();
      
        }
        
    }
}
