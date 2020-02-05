package controller;

import manager.CategorieManager;
import manager.ProduitManager;
import manager.TopVenteManager;
import manager.database.Manager;
import models.Categorie;
import models.Produit;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CategorieListViewController extends SMController {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
        String idCat = req.getParameter("id");
        String idProduit = req.getParameter("id");
        ProduitManager produitManager = new ProduitManager();
        CategorieManager categorieManager = new CategorieManager();

        Manager manager = new Manager();
        Map<String, Object > params = new HashMap<>();
        params.put("id_cat", Integer.parseInt(idCat));

        List<Produit> listProdByCat = manager.list(Produit.class, "id_cat=:id_cat", params);

        Produit detailProduit = produitManager.getById(Produit.class, Integer.parseInt(idProduit));
        Categorie detailCategorie = categorieManager.getById(Categorie.class, Integer.parseInt(idCat));
        req.setAttribute("produit", detailProduit);
        req.setAttribute("categorie", detailCategorie);
        req.setAttribute("listeProduit", produitManager.list());
        req.setAttribute("listProdByCat", listProdByCat);
        req.getRequestDispatcher("/list-view.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        resp.sendRedirect(req.getContextPath() + "/list-view");
    }
}
