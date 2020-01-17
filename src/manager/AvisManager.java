package manager;

import manager.database.Manager;
import models.Avis;
import models.Produit;
import models.Utilisateur;

import java.util.Date;
import java.util.List;

public class AvisManager extends Manager {

    public void add(Date date_avis, String avis, int note, Produit produit, Utilisateur utilisateur){
        Avis avis2 = new Avis(date_avis, avis, note, produit, utilisateur);
        super.save(avis2);
    }

    public List<Avis> list(){
        return super.list(Avis.class);
    }
}
