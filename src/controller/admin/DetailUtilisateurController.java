package controller.admin;

import manager.UtilisateurManager;
import models.Utilisateur;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DetailUtilisateurController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idUtilisateur = req.getParameter("id");
        UtilisateurManager utilisateurManager = new UtilisateurManager();

        Utilisateur detailUtilisateur = utilisateurManager.getById(Utilisateur.class, Integer.parseInt(idUtilisateur));
        req.setAttribute("utilisateur", detailUtilisateur);
        req.getRequestDispatcher("/admin/detail_utilisateur.jsp").forward(req, resp);
    }
}
