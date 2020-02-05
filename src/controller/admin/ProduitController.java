package controller.admin;

import manager.CategorieManager;
import manager.ProduitManager;
import models.Categorie;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.print.PrinterGraphics;
import java.io.IOException;

public class ProduitController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if (session.getAttribute("connect") == null){
            resp.sendRedirect("/admin/login");
            return;
        }

        CategorieManager categorieManager = new CategorieManager();
        ProduitManager produitManager = new ProduitManager();

        req.setAttribute("listeCategorie", categorieManager.list());
        req.setAttribute("listeProduit", produitManager.list());
        req.getRequestDispatcher("/admin/produit.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        ProduitManager produitManager = new ProduitManager();
        CategorieManager categorieManager = new CategorieManager();

        String idCat = req.getParameter("idCategorie");
        Categorie categorie = (Categorie) categorieManager.getById(Categorie.class, Integer.parseInt(idCat));
        produitManager.add(req.getParameter("marque"),req.getParameter("name"), req.getParameter("mini_desc"), req.getParameter("description"), Float.parseFloat(req.getParameter("prix")), Integer.parseInt(req.getParameter("promo")), req.getParameter("url_photo"), Integer.parseInt(req.getParameter("quantite")), categorie, Boolean.parseBoolean(req.getParameter("isActif")));
        resp.sendRedirect(req.getContextPath() + "/admin/produit");
    }
}
