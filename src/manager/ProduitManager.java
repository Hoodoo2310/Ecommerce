package manager;

import manager.database.Manager;
import models.Categorie;
import models.Produit;

import java.util.List;

public class ProduitManager extends Manager {

    public void add(String marque, String nom, String mini_desc, String description, Float prix, int promo, String url_photo, Categorie categorie){
        Produit produit = new Produit(marque,nom, mini_desc, description, prix, promo, url_photo, categorie);
        super.save(produit);
    }

    public List<Produit> list(){
        return super.list(Produit.class);
    }
}
