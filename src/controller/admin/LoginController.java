package controller.admin;

import manager.database.Manager;
import models.Utilisateur;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/admin/login.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String login  = req.getParameter("login");
        String password  = req.getParameter("password");

        Manager manager = new Manager();
        Map<String, Object > params = new HashMap<>();
        params.put("email", login);
        params.put("mdp", password);

        List<Utilisateur> list = manager.list(Utilisateur.class, "email=:email and mdp=:mdp and isAdmin=1", params);


        if (list.size() == 1){
            HttpSession session = req.getSession(); // recup toutes les variables de ma session
            session.setAttribute("connect", true);
            resp.sendRedirect("/admin/dashboard");
        }else{
            resp.sendRedirect("/admin/login");
        }
    }
}
