package controller.checkout;

import controller.SMController;
import fonctions.MaSession;
import manager.AdresseManager;
import manager.UtilisateurManager;
import models.Utilisateur;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CheckoutStep1Controller extends SMController {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
        MaSession maSession = new MaSession(req.getSession());
        if (maSession.isUser() == false){
            resp.sendRedirect("/login.jsp");
            return;
        }

        Utilisateur utilisateur = (Utilisateur) req.getSession().getAttribute("utilisateur");

        req.getRequestDispatcher("/checkout-step1.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String idUser = req.getParameter("idUser");
        UtilisateurManager utilisateurManager = new UtilisateurManager();
        AdresseManager adresseManager = new AdresseManager();
        Utilisateur utilisateur = utilisateurManager.getById(Utilisateur.class, Integer.parseInt(idUser));

        adresseManager.add(req.getParameter("nom"), req.getParameter("prenom"), req.getParameter("adresse"), Integer.parseInt(req.getParameter("cp")), req.getParameter("ville"), req.getParameter("pays"), req.getParameter("type"), utilisateur);
        resp.sendRedirect(req.getContextPath() + "/checkoutStep1");
    }
}
