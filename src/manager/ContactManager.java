package manager;

import manager.database.Manager;
import models.Contact;

import java.util.Date;
import java.util.List;

public class ContactManager extends Manager {

    public void add(String nom, String prenom, String email, String objet, String message, Date date){
        Contact categorie = new Contact(nom, prenom, email, objet, message, date);
        super.save(categorie);
    }

    public List<Contact> list(){
        return super.list(Contact.class);
    }
}
