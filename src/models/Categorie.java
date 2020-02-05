package models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Categorie {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String nom;
    private String urlPhoto;

    //CONSTRUCTEURS
    public Categorie() {
    }
    public Categorie(String nom, String urlPhoto) {
        this.nom = nom;
        this.urlPhoto = urlPhoto;
    }

    //GETTERS
    public int getId() {
        return id;
    }
    public String getNom() {
        return nom;
    }
    public String getUrlPhoto() {
        return urlPhoto;
    }

    //SETTERS
    public void setId(int id) {
        this.id = id;
    }
    public void setNom(String nom) {
        this.nom = nom;
    }
    public void setUrlPhoto(String urlPhoto) {
        this.urlPhoto = urlPhoto;
    }
}
