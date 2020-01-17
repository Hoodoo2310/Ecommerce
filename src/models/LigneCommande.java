package models;

import javax.persistence.*;

@Entity
@Table(name = "ligne_commande")
public class LigneCommande {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private int qtt;
    private float prix;
    @ManyToOne
    @JoinColumn(name = "id_prod")
    private Produit produit;
    @ManyToOne
    @JoinColumn(name = "id_commande")
    private Commande commande;

    //CONSTRUCTEURS
    public LigneCommande() {
    }
    public LigneCommande(int qtt, float prix, Produit produit, Commande commande) {
        this.qtt = qtt;
        this.prix = prix;
        this.produit = produit;
        this.commande = commande;
    }

    //GETTERS
    public int getId() {
        return id;
    }
    public int getQtt() {
        return qtt;
    }
    public float getPrix() {
        return prix;
    }
    public Produit getProduit() {
        return produit;
    }
    public Commande getCommande() {
        return commande;
    }

    //SETTERS
    public void setId(int id) {
        this.id = id;
    }
    public void setQtt(int qtt) {
        this.qtt = qtt;
    }
    public void setPrix(float prix) {
        this.prix = prix;
    }
    public void setProduit(Produit produit) {
        this.produit = produit;
    }
    public void setCommande(Commande commande) {
        this.commande = commande;
    }
}
