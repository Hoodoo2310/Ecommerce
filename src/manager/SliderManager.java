package manager;

import manager.database.Manager;
import models.Produit;
import models.Slider;

import java.util.List;

public class SliderManager extends Manager {

    public void add(String url_photo, Produit produit){
        Slider slider = new Slider(url_photo, produit);
        super.save(slider);
    }

    public List<Slider> list(){
        return super.list(Slider.class);
    }
}
