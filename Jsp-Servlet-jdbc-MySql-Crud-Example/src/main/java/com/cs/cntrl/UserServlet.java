package com.cs.cntrl;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.cs.dao.DatabaseConnect;
import com.cs.dao.UserDAO;
import com.cs.model.User;

@WebServlet("/user")
public class UserServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        try (Connection con = DatabaseConnect.getConnection()) {
            UserDAO dao = new UserDAO(con);

            if ("delete".equals(action)) {
                int id = Integer.parseInt(req.getParameter("id"));
                dao.deleteUserById(id);
                resp.sendRedirect("user?action=list");

            } else if ("edit".equals(action)) {
                int id = Integer.parseInt(req.getParameter("id"));
                User user = dao.getUserById(id);
                req.setAttribute("user", user);
                req.getRequestDispatcher("editUser.jsp").forward(req, resp);

            } else { // list
                List<User> list = dao.getAllUsers();
                req.setAttribute("userList", list);
                req.getRequestDispatcher("displayUsers.jsp").forward(req, resp);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        try (Connection con = DatabaseConnect.getConnection()) {
            UserDAO dao = new UserDAO(con);

            if ("insert".equals(action)) {
                User u = new User(
                        req.getParameter("name"),
                        req.getParameter("email"),
                        req.getParameter("country"));
                dao.addUser(u);
                
                // ✅ Set success message
                req.setAttribute("msg", "User added successfully!");

                // ✅ Forward back to addUser.jsp (NOT redirect)
                req.getRequestDispatcher("addUser.jsp").forward(req, resp);
                return;

            } else if ("update".equals(action)) {
                User u = new User(
                        Integer.parseInt(req.getParameter("id")),
                        req.getParameter("name"),
                        req.getParameter("email"),
                        req.getParameter("country"));
                dao.updateUser(u);
            }

            resp.sendRedirect("user?action=list");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
