package manager;

import manager.database.Manager;
import models.Commande;
import models.Utilisateur;

import java.util.Date;
import java.util.List;

public class CommandeManager extends Manager {

    public void add(Date date_commande, Float total, Utilisateur utilisateur){
        Commande commande = new Commande(date_commande, total, utilisateur);
        super.save(commande);
    }

    public List<Commande> list(){
        return super.list(Commande.class);
    }
}
