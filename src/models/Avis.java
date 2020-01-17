package models;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Avis {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private Date date_avis;
    private String avis;
    private int note;
    @ManyToOne
    @JoinColumn(name = "id_prod")
    private Produit produit;
    @ManyToOne
    @JoinColumn(name = "id_user")
    private Utilisateur utilisateur;

    //CONSTRUCTEURS
    public Avis() {
    }
    public Avis(Date date_avis, String avis, int note, Produit produit, Utilisateur utilisateur) {
        this.date_avis = date_avis;
        this.avis = avis;
        this.note = note;
        this.produit = produit;
        this.utilisateur = utilisateur;
    }

    //GETTERS
    public int getId() {
        return id;
    }
    public Date getDate_avis() {
        return date_avis;
    }
    public String getAvis() {
        return avis;
    }
    public int getNote() {
        return note;
    }
    public Produit getProduit() {
        return produit;
    }
    public Utilisateur getUtilisateur() {
        return utilisateur;
    }

    //SETTERS
    public void setId(int id) {
        this.id = id;
    }
    public void setDate_avis(Date date_avis) {
        this.date_avis = date_avis;
    }
    public void setAvis(String avis) {
        this.avis = avis;
    }
    public void setNote(int note) {
        this.note = note;
    }
    public void setProduit(Produit produit) {
        this.produit = produit;
    }
    public void setUtilisateur(Utilisateur utilisateur) {
        this.utilisateur = utilisateur;
    }
}
