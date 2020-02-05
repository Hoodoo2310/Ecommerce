package fonctions.beans;

import models.Produit;

public class BeanPanier {

    private Produit produit;
    private int qtt;

    //CONSTRUCTEUR
    public BeanPanier(Produit produit, int qtt) {
        this.produit = produit;
        this.qtt = qtt;
    }

    //GETTERS
    public Produit getProduit() {
        return produit;
    }
    public int getQtt() {
        return qtt;
    }

    //SETTERS
    public void setProduit(Produit produit) {
        this.produit = produit;
    }
    public void setQtt(int qtt) {
        this.qtt = qtt;
    }
}
