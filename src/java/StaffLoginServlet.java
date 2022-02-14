import bean.LoginBean;
import dao.LoginDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;


public class StaffLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        LoginBean loginBean = new LoginBean();
        
        loginBean.setEmail(email);
        loginBean.setPassword(password);
        
        LoginDao loginDao = new LoginDao();
        
        String userValidate = loginDao.authenticateUser(loginBean);
        
        HttpSession session = request.getSession();
        
        if(userValidate.equals("SUCCESS")){
            session.setAttribute("email", email);
            request.getRequestDispatcher("/staffhome.jsp").forward(request, response);
        }
        else {
            request.setAttribute("errMsg", userValidate);
            request.getRequestDispatcher("/index.html").forward(request, response);
        }
    }

}
