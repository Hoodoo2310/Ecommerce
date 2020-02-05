package manager.database;

import models.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;


public class DataBaseManager {
    public static Session getSession(){
        Configuration con = new Configuration().configure("hibernate.cfg.xml")
                .addAnnotatedClass(Categorie.class)
                .addAnnotatedClass(Produit.class)
                .addAnnotatedClass(Photo.class)
                .addAnnotatedClass(Slider.class)
                .addAnnotatedClass(TopVente.class)
                .addAnnotatedClass(Utilisateur.class)
                .addAnnotatedClass(Avis.class)
                .addAnnotatedClass(Adresse.class)
                .addAnnotatedClass(Commande.class)
                .addAnnotatedClass(LigneCommande.class)
                .addAnnotatedClass(Newsletter.class)
                .addAnnotatedClass(Contact.class);
        ServiceRegistry registry = new ServiceRegistryBuilder().applySettings(con.getProperties()).buildServiceRegistry();
        SessionFactory sf = con.buildSessionFactory(registry);
        return sf.openSession();
    }
}
