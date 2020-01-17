package manager;

import manager.database.Manager;
import models.Photo;
import models.Produit;

import java.util.List;

public class PhotoManager extends Manager {

    public void add(String url_photo, int position, Produit produit){
        Photo photo = new Photo(url_photo, position, produit);
        super.save(photo);
    }

    public List<Photo> list(){
        return super.list(Photo.class);
    }
}
