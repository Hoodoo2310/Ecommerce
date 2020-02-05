package models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class Contact {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String nom;
    private String prenom;
    private String email;
    private String objet;
    private String message;
    private Date date;

    //CONSTRUCTEURS
    public Contact() {
    }

    public Contact(String nom, String prenom, String email, String objet, String message, Date date) {
        this.nom = nom;
        this.prenom = prenom;
        this.email = email;
        this.objet = objet;
        this.message = message;
        this.date = date;
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
    public String getEmail() {
        return email;
    }
    public String getObjet() {
        return objet;
    }
    public String getMessage() {
        return message;
    }
    public Date getDate() {
        return date;
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
    public void setEmail(String email) {
        this.email = email;
    }
    public void setObjet(String objet) {
        this.objet = objet;
    }
    public void setMessage(String message) {
        this.message = message;
    }
    public void setDate(Date date) {
        this.date = date;
    }
}
