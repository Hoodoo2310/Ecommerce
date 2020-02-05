package controller;

import manager.AvisManager;
import manager.CategorieManager;
import manager.ProduitManager;
import manager.TopVenteManager;
import manager.database.Manager;
import models.Avis;
import models.Produit;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DetailProduitController extends SMController {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
        String idProduit = req.getParameter("id");
        ProduitManager produitManager = new ProduitManager();
        CategorieManager categorieManager = new CategorieManager();
        TopVenteManager topVenteManager = new TopVenteManager();

        String id_cat = req.getParameter("id_cat");

        Manager manager = new Manager();
        Map<String, Object > params = new HashMap<>();
        params.put("id_cat", id_cat);

        List<Produit> listProdByCategorie = manager.list(Produit.class, "id_cat=:id_cat", params);


        req.setAttribute("listProdByCategorie", listProdByCategorie);

        Produit detailProduit = produitManager.getById(Produit.class, Integer.parseInt(idProduit));
        req.setAttribute("produit", detailProduit);
        req.setAttribute("listeCategorie", categorieManager.list());
        req.setAttribute("listeProduit", produitManager.list());
        req.setAttribute("listeTopVente", topVenteManager.list());
        req.getRequestDispatcher("/detail_produit.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        resp.sendRedirect(req.getContextPath() + "/detail_produit");
    }
}
