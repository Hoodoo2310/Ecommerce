package controller.admin;

import manager.UtilisateurManager;
import models.Utilisateur;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

public class UtilisateurController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if (session.getAttribute("connect") == null){
            resp.sendRedirect("/admin/login");
            return;
        }

        UtilisateurManager utilisateurManager = new UtilisateurManager();

        String id = req.getParameter("id");
        if (id != null){
            Utilisateur updateUser = utilisateurManager.getById(Utilisateur.class, Integer.parseInt(id));
            req.setAttribute("updateUtilisateur", updateUser);
        }
        req.setAttribute("idUserUpdate", id);
        req.setAttribute("listUtilisateur", utilisateurManager.list());
        req.getRequestDispatcher("/admin/users.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        UtilisateurManager utilisateurManager = new UtilisateurManager();

        utilisateurManager.add(req.getParameter("nom"), req.getParameter("prenom"), req.getParameter("mdp"), req.getParameter("email"), new Date(), "true".equals(req.getParameter("type")));
        resp.sendRedirect(req.getContextPath() + "/admin/users");
    }
}