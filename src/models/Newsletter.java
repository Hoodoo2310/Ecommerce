package models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class Newsletter {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String email;
    private Date date_inscription;

    //CONSTRUCTEURS
    public Newsletter() {
    }
    public Newsletter(String email, Date date_inscription) {
        this.email = email;
        this.date_inscription = date_inscription;
    }

    //GETTERS
    public int getId() {
        return id;
    }
    public String getEmail() {
        return email;
    }
    public Date getDate_inscription() {
        return date_inscription;
    }

    //SETTERS
    public void setId(int id) {
        this.id = id;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public void setDate_inscription(Date date_inscription) {
        this.date_inscription = date_inscription;
    }
}
