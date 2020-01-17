package controller.admin;

import manager.CategorieManager;
import manager.PhotoManager;
import manager.ProduitManager;
import manager.database.DataBaseManager;
import models.Photo;
import models.Produit;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DetailProduitController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idProduit = req.getParameter("id");
        ProduitManager produitManager = new ProduitManager();
        CategorieManager categorieManager = new CategorieManager();

        Produit detailProduit = produitManager.getById(Produit.class, Integer.parseInt(idProduit));
        req.setAttribute("produit", detailProduit);
        req.setAttribute("listeCategorie", categorieManager.list());
        req.getRequestDispatcher("/admin/detail_produit.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        ProduitManager produitManager = new ProduitManager();
        PhotoManager photoManager = new PhotoManager();

        String action = req.getParameter("action");
        String idProd = req.getParameter("idProd");

        if (action.equals("updateProduit")){

        }else if (action.equals("deleteProduit")){

            return;
        }else if (action.equals("ajoutPhoto")){
            Produit produit = produitManager.getById(Produit.class, Integer.parseInt(idProd));
            photoManager.add(req.getParameter("url_photo"), Integer.parseInt(req.getParameter("position")), produit);
        }else if (action.equals("updatePhoto")){

        }else if (action.equals("deletePhoto")){

        }
        resp.sendRedirect(req.getContextPath() + "/admin/detail_produit?id=" +idProd);
    }
}
