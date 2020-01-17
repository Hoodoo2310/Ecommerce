package manager;

import manager.database.Manager;
import models.Utilisateur;

import java.util.Date;
import java.util.List;

public class UtilisateurManager extends Manager {

    public void add(String nom, String prenom, String mdp, String email, Date date_creation, Boolean isAdmin){
        Utilisateur utilisateur = new Utilisateur(nom, prenom, mdp, email, date_creation, isAdmin);
        super.save(utilisateur);
    }

    public List<Utilisateur> list(){
        return super.list(Utilisateur.class);
    }
}
