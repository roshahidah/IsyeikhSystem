import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import util.PostConnection;

public class StaffDeleteStatusServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String id = request.getParameter("id");
        
        int deviceID = Integer.parseInt(id);
        
        Connection con;
        
        try {
            con = PostConnection.createConnection();
            PreparedStatement pstmt = con.prepareStatement("DELETE FROM device WHERE deviceID = " + deviceID);
            
            int i = pstmt.executeUpdate();
            
            if(i>0){
                request.getRequestDispatcher("/staffviewalldevice.jsp").forward(request, response);
            }
            else {
                request.getRequestDispatcher("/staffhome.jsp").forward(request, response);
            }
        } catch (SQLException e) { 
            e.getMessage();
        }
    }
}
