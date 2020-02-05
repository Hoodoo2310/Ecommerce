package controller;

import fonctions.beans.BeanPanier;
import manager.database.Manager;
import models.Produit;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PanierController extends SMController {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
        HttpSession panier = req.getSession();
        Manager manager = new Manager();
        List<BeanPanier> beanPaniers = new ArrayList<>();

        float total = 0;

        if (panier.getAttribute("listProduits") != null){
            Map<Integer, Integer> listProduitsQtt = (Map<Integer, Integer>) panier.getAttribute("listProduits");
            for (Map.Entry<Integer, Integer> entry : listProduitsQtt.entrySet()){
                Produit produit = manager.getById(Produit.class, entry.getKey());

                total += (float) ((produit.getPrix() - (produit.getPrix() * produit.getPromo()) / 100 ) * entry.getValue());
                BeanPanier p = new BeanPanier(produit, entry.getValue());
                beanPaniers.add(p);
            }
        }

        req.setAttribute("listPanier", beanPaniers);
        req.setAttribute("total", total);

        req.getRequestDispatcher("/cart.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession panier = req.getSession();
        String action = req.getParameter("action");

        if (panier.getAttribute("listProduits") == null) { //initaliser mon panier
            Map<Integer, Integer> p = new HashMap<>();
            panier.setAttribute("listProduits", p);
        }

        if ("addPanier".equals(action)){
            Map<Integer, Integer> listProduitsQtt = (Map<Integer, Integer>) panier.getAttribute("listProduits"); // contenu du panier
            listProduitsQtt.put(Integer.parseInt(req.getParameter("idProd")), Integer.parseInt(req.getParameter("qty")));

            panier.setAttribute("listProduits", listProduitsQtt);// mettre à jour mon panier
        }if ("deletePanier".equals(action)){
            Map<Integer, Integer> listProduitsQtt = (Map<Integer, Integer>) panier.getAttribute("listProduits"); // contenu du panier
            listProduitsQtt.remove(Integer.parseInt(req.getParameter("idProd")));

            panier.setAttribute("listProduits", listProduitsQtt); // mettre à jour mon panier
        }if ("updatePanier".equals(action)){
            Map<Integer, Integer> listProduitsQtt = (Map<Integer, Integer>) panier.getAttribute("listProduits"); // contenu du panier
            listProduitsQtt.put(Integer.parseInt(req.getParameter("idProd")), Integer.parseInt(req.getParameter("qty")));

            panier.setAttribute("listProduits", listProduitsQtt);// mettre à jour mon panier
        }
        resp.sendRedirect(req.getContextPath() + "/cart");
    }
}
