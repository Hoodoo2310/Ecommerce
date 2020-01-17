package manager;

import manager.database.Manager;
import models.Commande;
import models.LigneCommande;
import models.Produit;

import java.util.List;

public class LigneCommandeManager extends Manager {

    public void add(int qtt, float prix, Produit produit, Commande commande){
        LigneCommande ligneCommande = new LigneCommande(qtt, prix, produit, commande);
        super.save(ligneCommande);
    }

    public List<LigneCommande> list(){
        return super.list(LigneCommande.class);
    }
}
