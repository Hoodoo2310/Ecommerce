package models;

import javax.persistence.*;

@Entity
@Table(name = "top_vente")
public class TopVente {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String url;
    @ManyToOne
    @JoinColumn(name = "id_prod")
    private Produit produit;

    //CONSTRUCTEURS
    public TopVente() {
    }
    public TopVente(String url, Produit produit) {
        this.url = url;
        this.produit = produit;
    }

    //GETTERS
    public int getId() {
        return id;
    }
    public String getUrl() {
        return url;
    }
    public Produit getProduit() {
        return produit;
    }

    //SETTERS
    public void setId(int id) {
        this.id = id;
    }
    public void setUrl(String url) {
        this.url = url;
    }
    public void setProduit(Produit produit) {
        this.produit = produit;
    }
}
