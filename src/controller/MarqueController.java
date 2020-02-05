package controller;

import manager.CategorieManager;
import manager.NewsletterManager;
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
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MarqueController extends SMController {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
        String marque = req.getParameter("marque");

        ProduitManager produitManager = new ProduitManager();
        CategorieManager categorieManager = new CategorieManager();
        TopVenteManager topVenteManager = new TopVenteManager();

        Manager manager = new Manager();
        Map<String, Object > params = new HashMap<>();
        params.put("marque", marque);

        List<Produit> listProdByMarque = manager.list(Produit.class, "marque=:marque", params);

        req.setAttribute("marque", marque);
        req.setAttribute("listeProduit", produitManager.list());
        req.setAttribute("listProdByMarque", listProdByMarque);
        req.getRequestDispatcher("/list-marque.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        resp.sendRedirect(req.getContextPath() + "/list-marque");
    }
}
