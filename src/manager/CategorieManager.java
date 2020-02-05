package manager;

import manager.database.Manager;
import models.Categorie;

import java.util.List;

public class CategorieManager extends Manager {

    public void add(String nom, String urlPhoto){
        Categorie categorie = new Categorie(nom, urlPhoto);
        super.save(categorie);
    }

    public List<Categorie> list(){
        return super.list(Categorie.class);
    }
}
