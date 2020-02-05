package controller.admin;

import manager.UtilisateurManager;
import manager.database.Manager;
import models.Adresse;
import models.Commande;
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

public class DetailUtilisateurController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if (session.getAttribute("connect") == null){
            resp.sendRedirect("/admin/login");
            return;
        }
        String idUtilisateur = req.getParameter("id");
        UtilisateurManager utilisateurManager = new UtilisateurManager();

        Manager manager = new Manager();
        Map<String, Object > params = new HashMap<>();
        params.put("id_user", idUtilisateur);
        params.put("type", "facturation");

        List<Adresse> listAdresseFacturation = manager.list(Adresse.class, "id_user=:id_user and type=:type", params);
        params.put("type", "livraison");
        List<Adresse> listAdresseLivraison = manager.list(Adresse.class, "id_user=:id_user and type=:type", params);
        params.remove("type"); //pour supprimer le paramètre type (facturation ou livraison) pour effectuer ma nouvelle requête pour avoir ma Liste de Commandes
        List<Commande> listCommande = manager.list(Commande.class, "id_user=:id_user", params);

        Utilisateur detailUtilisateur = utilisateurManager.getById(Utilisateur.class, Integer.parseInt(idUtilisateur));
        req.setAttribute("utilisateur", detailUtilisateur);
        req.setAttribute("listAdresseFacturation",listAdresseFacturation);
        req.setAttribute("listAdresseLivraison",listAdresseLivraison);
        req.setAttribute("listCommande", listCommande);
        req.getRequestDispatcher("/admin/detail_utilisateur.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        resp.sendRedirect(req.getContextPath() + "/admin/detail_utilisateur");
    }
}
