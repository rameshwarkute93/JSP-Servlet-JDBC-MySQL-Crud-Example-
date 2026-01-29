package com.cs.cntrl;



import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/LoginValidate")
public class LoginValidate extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        if("Ram".equals(req.getParameter("loginName")) && "Pass".equals(req.getParameter("password"))) {
            req.getSession().setAttribute("user","Ram");
            resp.sendRedirect("MainPage.jsp");
        } else {
            req.setAttribute("error","Invalid Credentials!");
            req.getRequestDispatcher("LoginPage.jsp").forward(req,resp);
        }
    }
}
