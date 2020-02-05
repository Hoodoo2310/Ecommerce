package fonctions;

import manager.UtilisateurManager;
import manager.database.Manager;
import models.Adresse;
import models.Utilisateur;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MaSession {
    private HttpSession session;

    //CONSTRUCTEUR
    public MaSession(HttpSession session) {
        this.session = session;
    }

    /**
     * tester si l'utilisateur est bien un admin
     * @return
     */
    public boolean isAdmin(){
        if (this.session.getAttribute("connect") == null || (boolean)this.session.getAttribute("connect") == false ){
            return false;
        }

        if (this.session.getAttribute("isAdmin") == null || (boolean)this.session.getAttribute("isAdmin") == false ){
            return false;
        }
        return true;
    }
    /**
     * tester si l'utilisateur est bien un utilisateur normai
     * @return
     */
    public boolean isUser(){
        if (this.session.getAttribute("connect") == null || (boolean)this.session.getAttribute("connect") == false ){ // in n'est pas conneter
            return false;
        }

        if (this.session.getAttribute("isAdmin") == null || (boolean)this.session.getAttribute("isAdmin") == true ){ // in n'est pas conneter
            return false;
        }
        return true;
    }

    public void addUser(int idUser){
        this.session.setAttribute("connect",true);
        this.session.setAttribute("isAdmin",false);
        this.session.setAttribute("idUser",idUser);
        UtilisateurManager utilisateurManager = new UtilisateurManager();
        Utilisateur utilisateur = utilisateurManager.getById(Utilisateur.class, idUser);
        this.session.setAttribute("utilisateur", utilisateur);
    }

    public void addAdmin(int idUser){
        this.session.setAttribute("connect",true);
        this.session.setAttribute("isAdmin",true);
        this.session.setAttribute("idUser",idUser);
    }

    public void remove(){
        this.session.invalidate();
    }
}
