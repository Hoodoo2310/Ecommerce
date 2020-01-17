package models;

import javax.persistence.*;

@Entity
public class Adresse {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String adresse;
    private int cp;
    private String ville;
    private String pays;
    private String type;
    @ManyToOne
    @JoinColumn(name = "id_user")
    private Utilisateur utilisateur;

    //CONSTRUCTEURS
    public Adresse() {
    }
    public Adresse(String adresse, int cp, String ville, String pays, String type, Utilisateur utilisateur) {
        this.adresse = adresse;
        this.cp = cp;
        this.ville = ville;
        this.pays = pays;
        this.type = type;
        this.utilisateur = utilisateur;
    }

    //GETTERS
    public int getId() {
        return id;
    }
    public String getAdresse() {
        return adresse;
    }
    public int getCp() {
        return cp;
    }
    public String getVille() {
        return ville;
    }
    public String getPays() {
        return pays;
    }
    public String getType() {
        return type;
    }
    public Utilisateur getUtilisateur() {
        return utilisateur;
    }

    //SETTERS
    public void setId(int id) {
        this.id = id;
    }
    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }
    public void setCp(int cp) {
        this.cp = cp;
    }
    public void setVille(String ville) {
        this.ville = ville;
    }
    public void setPays(String pays) {
        this.pays = pays;
    }
    public void setType(String type) {
        this.type = type;
    }
    public void setUtilisateur(Utilisateur utilisateur) {
        this.utilisateur = utilisateur;
    }
}
