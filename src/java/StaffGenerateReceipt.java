import bean.ReceiptBean;
import dao.ReceiptDao;
import java.io.IOException;
import javax.servlet.*;
import java.sql.*;
import javax.servlet.http.*;

public class StaffGenerateReceipt extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String recDetails = request.getParameter("recDetails");
        String datePayment = request.getParameter("datePayment");
        double totalPayment = Double.parseDouble(request.getParameter("totalPayment"));
        String methodPayment = request.getParameter("methodPayment");
        int staffID = Integer.parseInt(request.getParameter("staffID"));
        int deviceID = Integer.parseInt(request.getParameter("deviceID"));
        int custID = Integer.parseInt(request.getParameter("custID"));
                
        ReceiptBean receiptBean = new ReceiptBean();
        
        receiptBean.setRecDetails(recDetails);
        receiptBean.setDatePayment(datePayment);
        receiptBean.setTotalPayment(totalPayment);
        receiptBean.setMethodPayment(methodPayment);
        receiptBean.setStaffID(staffID);
        receiptBean.setDeviceID(deviceID);
        receiptBean.setCustID(custID);
        
        ReceiptDao receiptDao = new ReceiptDao();
        
        String userValidate = receiptDao.generateReceipt(receiptBean);
        
        if(userValidate.equals("SUCCESS")){
            request.getRequestDispatcher("/staffviewreceipt.jsp?id=" + deviceID).forward(request, response);
        }
        else {
            request.setAttribute("errMsg", userValidate);
            request.getRequestDispatcher("/staffgeneratereceipt.jsp").forward(request, response);
        }
    }

}
