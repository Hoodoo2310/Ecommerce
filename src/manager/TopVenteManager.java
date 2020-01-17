package manager;

import manager.database.Manager;
import models.Produit;
import models.TopVente;

import java.util.List;

public class TopVenteManager extends Manager {

    public void add(String url, Produit produit){
        TopVente topVente = new TopVente(url, produit);
        super.save(topVente);
    }

    public List<TopVente> list(){
        return super.list(TopVente.class);
    }
}
