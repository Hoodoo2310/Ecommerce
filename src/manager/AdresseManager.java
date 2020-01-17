package manager;

import manager.database.Manager;
import models.Adresse;
import models.Utilisateur;

import java.util.List;

public class AdresseManager extends Manager {

    public void add(String adresse, int cp, String ville, String pays, String type, Utilisateur utilisateur){
        Adresse adresse1 = new Adresse(adresse, cp, ville, pays, type, utilisateur);
        super.save(adresse1);
    }

    public List<Adresse> List(){
        return super.list(Adresse.class);
    }
}
