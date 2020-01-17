package manager;

import manager.database.Manager;
import models.Newsletter;

import java.util.Date;
import java.util.List;

public class NewsletterManager extends Manager {

    public void add(String email, Date date_inscription){
        Newsletter newsletter = new Newsletter(email, date_inscription);
        super.save(newsletter);
    }

    public List<Newsletter> list(){
        return super.list(Newsletter.class);
    }

}
