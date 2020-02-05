package models;

import manager.database.Manager;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Entity
public class Produit {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String marque;
    private String nom;
    private String mini_desc;
    private String description;
    private Float prix;
    private int promo;
    private String url_photo;
    private int quantite;
    @ManyToOne
    @JoinColumn (name = "id_cat")
    private Categorie categorie;
    private boolean isActif;

    //CONSTRUCTEURS
    public Produit() {
    }
    public Produit(String marque, String nom, String mini_desc, String description, Float prix, int promo, String url_photo, int quantite, Categorie categorie, boolean isActif) {
        this.marque = marque;
        this.nom = nom;
        this.mini_desc = mini_desc;
        this.description = description;
        this.prix = prix;
        this.promo = promo;
        this.url_photo = url_photo;
        this.quantite = quantite;
        this.categorie = categorie;
        this.isActif = isActif;
    }

    public List<Photo> getListPhotos(){
        Manager manager = new Manager();
        String req = "produit=:produit";
        Map<String, Object> params = new HashMap<>();
        params.put("produit", this);
        return manager.list(Photo.class, req, params);
    }

    public List<Avis> getListAvis(){
        Manager manager = new Manager();
        String req = "produit=:produit";
        Map<String, Object> params = new HashMap<>();
        params.put("produit", this);
        return manager.list(Avis.class, req, params);
    }

    //GETTERS
    public int getId() {
        return id;
    }
    public String getMarque() {
        return marque;
    }
    public String getNom() {
        return nom;
    }
    public String getMini_desc() {
        return mini_desc;
    }
    public String getDescription() {
        return description;
    }
    public Float getPrix() {
        return prix;
    }
    public int getPromo() {
        return promo;
    }
    public String getUrl_photo() {
        return url_photo;
    }
    public int getQuantite() {
        return quantite;
    }
    public Categorie getCategorie() {
        return categorie;
    }
    public boolean getActif() {
        return isActif;
    }

    //SETTERS
    public void setId(int id) {
        this.id = id;
    }
    public void setMarque(String marque) {
        this.marque = marque;
    }
    public void setNom(String nom) {
        this.nom = nom;
    }
    public void setMini_desc(String mini_desc) {
        this.mini_desc = mini_desc;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public void setPrix(Float prix) {
        this.prix = prix;
    }
    public void setPromo(int promo) {
        this.promo = promo;
    }
    public void setUrl_photo(String url_photo) {
        this.url_photo = url_photo;
    }
    public void setQuantite(int quantite) {
        this.quantite = quantite;
    }
    public void setCategorie(Categorie categorie) {
        this.categorie = categorie;
    }
    public void setActif(boolean actif) {
        isActif = actif;
    }
}
