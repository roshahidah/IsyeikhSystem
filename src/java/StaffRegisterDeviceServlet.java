import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.DeviceBean;
import dao.DeviceDao;

public class StaffRegisterDeviceServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         //use method request.getParameter() to receive attribute values fromt the registration.jsp
        int custID = Integer.parseInt(request.getParameter("custID"));
        String deviceModel= request.getParameter("deviceModel");
        String deviceRepair = request.getParameter("deviceDetails");
        int staffID = Integer.parseInt(request.getParameter("staffID"));
        
        String deviceStatus= "Ongoing";
        //create object for RegistrationBean clas
        DeviceBean deviceBean = new DeviceBean();
        DeviceDao deviceDao = new DeviceDao();
        
        deviceBean.setCustID(custID);
        deviceBean.setDeviceModel(deviceModel);
        deviceBean.setDeviceRepair(deviceRepair);
        deviceBean.setDeviceStatus(deviceStatus);
        deviceBean.setStaffID(staffID);
        
        String registration = deviceDao.registerDevice(deviceBean);
        
        if(registration.equalsIgnoreCase("SUCCESS")){
            
            request.getRequestDispatcher("/staffviewalldevice.jsp").forward(request, response); //if the user is successfully registered, perform a dispatch to the URL /login.jsp
           
        }
        else{
            request.setAttribute("errMsg", registration);
            request.getRequestDispatcher("/staffregisterdevice.jsp").forward(request, response); //if error iccurs, perform a dispatch to the URL /registration.jsp
        }
        
    }
}
