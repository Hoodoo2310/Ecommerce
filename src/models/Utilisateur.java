package models;

import manager.database.Manager;

import javax.persistence.*;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Entity
public class Utilisateur {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String nom;
    private String prenom;
    private String mdp;
    private String email;
    private Date date_creation;
    private Boolean isAdmin;

    //CONSTRUCTEURS
    public Utilisateur() {
    }
    public Utilisateur(String nom, String prenom, String mdp, String email, Date date_creation, Boolean isAdmin) {
        this.nom = nom;
        this.prenom = prenom;
        this.mdp = mdp;
        this.email = email;
        this.date_creation = date_creation;
        this.isAdmin = isAdmin;
    }

    public List<Adresse> getListAdresse(){
        Manager manager = new Manager();
        String req = "utilisateur=:utilisateur";
        Map<String, Object> params = new HashMap<>();
        params.put("utilisateur", this);
        return manager.list(Adresse.class, req, params);
    }

    //GETTERS
    public int getId() {
        return id;
    }
    public String getNom() {
        return nom;
    }
    public String getPrenom() {
        return prenom;
    }
    public String getMdp() {
        return mdp;
    }
    public String getEmail() {
        return email;
    }
    public Date getDate_creation() {
        return date_creation;
    }
    public Boolean getAdmin() {
        return isAdmin;
    }

    //SETTERS
    public void setId(int id) {
        this.id = id;
    }
    public void setNom(String nom) {
        this.nom = nom;
    }
    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }
    public void setMdp(String mdp) {
        this.mdp = mdp;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public void setDate_creation(Date date_creation) {
        this.date_creation = date_creation;
    }
    public void setAdmin(Boolean admin) {
        isAdmin = admin;
    }
}
