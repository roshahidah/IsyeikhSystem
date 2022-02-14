package dao;

import bean.ReceiptBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import util.PostConnection;

public class ReceiptDao {
    public String generateReceipt(ReceiptBean receiptBean) {
        Connection con;
        
        String recDetails = receiptBean.getRecDetails();
        String datePayment = receiptBean.getDatePayment();
        double totalPayment = receiptBean.getTotalPayment();
        String methodPayment = receiptBean.getMethodPayment();
        int staffID = receiptBean.getStaffID();
        int deviceID = receiptBean.getDeviceID();
        int custID = receiptBean.getCustID();

        try {
            con = PostConnection.createConnection();
            PreparedStatement pstmt = con.prepareStatement("INSERT INTO receipt"
                + "(recDetails, datePayment, totalPayment, methodPayment, staffID, deviceID, custID)"
                + "VALUES (?,?,?,?,?,?,?)");
            pstmt.setString(1, recDetails);
            pstmt.setString(2, datePayment);
            pstmt.setDouble(3, totalPayment);
            pstmt.setString(4, methodPayment);
            pstmt.setInt(5, staffID);
            pstmt.setInt(6, deviceID);
            pstmt.setInt(7, custID);
            
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
