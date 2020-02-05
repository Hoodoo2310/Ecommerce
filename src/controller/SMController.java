package controller;

import fonctions.beans.BeanPanier;
import manager.database.Manager;
import models.Categorie;
import models.Produit;
import models.TopVente;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class SMController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Manager manager = new Manager();
        HttpSession panier = req.getSession();
        List<BeanPanier> beanPaniers = new ArrayList<>();

        float total = 0;

        if (panier.getAttribute("listProduits") != null){
            Map<Integer, Integer> listProduitsQtt = (Map<Integer, Integer>) panier.getAttribute("listProduits");
            for (Map.Entry<Integer, Integer> entry : listProduitsQtt.entrySet()){
                Produit produits = manager.getById(Produit.class, entry.getKey());

                total += (float) ((produits.getPrix() - (produits.getPrix() * produits.getPromo()) / 100 ) * entry.getValue());
                BeanPanier p = new BeanPanier(produits, entry.getValue());
                beanPaniers.add(p);
            }
        }

        String urlPage = req.getServletPath();

        if (req.getParameterMap().size() != 0){
            urlPage += "?";
            for (Map.Entry<String, String[]> entry : req.getParameterMap().entrySet()) {
                urlPage += entry.getKey() +"="+entry.getValue()[0]+"&";
            }
        }

        req.setAttribute("listPanierHeader", beanPaniers);
        req.setAttribute("totalpanierHeader", total);
        req.setAttribute("listeCategorie", manager.list(Categorie.class));
        req.setAttribute("listeTopVente", manager.list(TopVente.class));
        req.setAttribute("urlPage", urlPage);
    }

}
