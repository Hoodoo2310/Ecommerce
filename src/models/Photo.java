package models;

import javax.persistence.*;

@Entity
public class Photo {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String url_photo;
    private int position;
    @ManyToOne
    @JoinColumn(name = "id_prod")
    private Produit produit;

    //CONSTRUCTEURS
    public Photo() {
    }
    public Photo(String url_photo, int position, Produit produit) {
        this.url_photo = url_photo;
        this.position = position;
        this.produit = produit;
    }

    //GETTERS
    public int getId() {
        return id;
    }
    public String getUrl_photo() {
        return url_photo;
    }
    public int getPosition() {
        return position;
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
    public void setPosition(int position) {
        this.position = position;
    }
    public void setProduit(Produit produit) {
        this.produit = produit;
    }
}
