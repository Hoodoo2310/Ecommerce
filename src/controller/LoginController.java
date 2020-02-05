package controller;

import fonctions.MaSession;
import manager.database.Manager;
import models.Utilisateur;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LoginController extends SMController {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);

        if (req.getParameter("error") != null){
            String idError = req.getParameter("error");
            String msgError = "";

            if (idError.equals("mdp")){
                msgError = "Votre Login ou pass n'est pas valide";
            }

            req.setAttribute("msgError", msgError);
        }

        req.getRequestDispatcher("/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        Manager manager = new Manager();

        switch (action){
            case "add":{
                boolean isAdmin = false;
                Utilisateur utilisateur = new Utilisateur(req.getParameter("nom")
                        , req.getParameter("prenom")
                        , req.getParameter("password")
                        , req.getParameter("email")
                        , new Date()
                        , isAdmin);
                manager.save(utilisateur);
                MaSession maSession = new MaSession(req.getSession());
                maSession.addUser(utilisateur.getId());
                req.setAttribute("utilisateur", utilisateur);
                resp.sendRedirect("/");
            }break;
            case "connexion":{
                Map<String, Object> param = new HashMap<>();
                param.put("email", req.getParameter("email") );
                param.put("mdp", req.getParameter("mdp") );
                List<Utilisateur> list  = manager.list(Utilisateur.class, "email=:email and mdp=:mdp", param);
                if (list.size() == 1){
                    MaSession maSession = new MaSession(req.getSession());
                    maSession.addUser(list.get(0).getId());
                    if (req.getParameter("urlPage") != null && !"".equals(req.getParameter("urlPage"))){ // si la personne se connecte à partir du header
                        resp.sendRedirect(req.getParameter("urlPage"));
                    }else{
                        resp.sendRedirect("/"); // si la personne se déconnect à partir de la page connexion
                    }
                    return;
                }else{
                    resp.sendRedirect("/clientLogin?error=mdp");
                    return;
                }
            }
            case "deconnexion":{
                MaSession maSession = new MaSession(req.getSession());
                maSession.remove();
                resp.sendRedirect("/"); // si la personne se déconnecte à partir de la page connexion ou sa page client
            }
        }
    }
}
