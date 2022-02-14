/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import bean.LoginBean;
import dao.LoginDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author User
 */
@WebServlet(urlPatterns = {"/custLoginServlet"})
public class custLoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        response.setContentType("text/html");
        
        String custEmail = request.getParameter("custEmail");
        String custPassword = request.getParameter("custPassword");
        
        LoginBean loginBean = new LoginBean();
        LoginDao loginDao = new LoginDao();
        
        loginBean.setEmail(custEmail);
        loginBean.setPassword(custPassword);
        
        String userValidate = loginDao.authenticateCust(loginBean);
        if(userValidate.equalsIgnoreCase("SUCCESS")){
            request.setAttribute("custEmail",custEmail);
            HttpSession session = request.getSession();
            session.setAttribute("custEmail",custEmail);
            request.getRequestDispatcher("/custhome.jsp").forward(request,response);
        }
        else{
            request.setAttribute("errMessage",userValidate);
            request.getRequestDispatcher("/custlogin.jsp").forward(request,response);
        }
    }
    }

