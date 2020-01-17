package models;

import javax.persistence.*;

@Entity
public class Slider {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String url_photo;
    @ManyToOne
    @JoinColumn(name = "id_prod")
    private Produit produit;

    //CONSTRUCTEURS
    public Slider() {
    }
    public Slider(String url_photo, Produit produit) {
        this.url_photo = url_photo;
        this.produit = produit;
    }

    //GETTERS
    public int getId() {
        return id;
    }
    public String getUrl_photo() {
        return url_photo;
    }
    public Produit getProduit() {
        return produit;
    }

    //SETTERS
    public void setId(int id) {
        this.id = id;
    }
    public void setUrl_photo(String url_photo) {
        this.url_photo = url_photo;
    }
    public void setProduit(Produit produit) {
        this.produit = produit;
    }
}
