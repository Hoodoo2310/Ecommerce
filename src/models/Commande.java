package models;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Commande {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private Date date_commande;
    private Float total;
    @ManyToOne
    @JoinColumn(name = "id_user")
    private Utilisateur utilisateur;

    //CONSTRUCTEURS
    public Commande() {
    }
    public Commande(Date date_commande, Float total, Utilisateur utilisateur) {
        this.date_commande = date_commande;
        this.total = total;
        this.utilisateur = utilisateur;
    }

    //GETTERS
    public int getId() {
        return id;
    }
    public Date getDate_commande() {
        return date_commande;
    }
    public Float getTotal() {
        return total;
    }
    public Utilisateur getUtilisateur() {
        return utilisateur;
    }

    //SETTERS
    public void setId(int id) {
        this.id = id;
    }
    public void setDate_commande(Date date_commande) {
        this.date_commande = date_commande;
    }
    public void setTotal(Float total) {
        this.total = total;
    }
    public void setUtilisateur(Utilisateur utilisateur) {
        this.utilisateur = utilisateur;
    }
}
