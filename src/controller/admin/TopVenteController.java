package controller.admin;

import manager.ProduitManager;
import manager.TopVenteManager;
import models.Produit;
import models.TopVente;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class TopVenteController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if (session.getAttribute("connect") == null){
            resp.sendRedirect("/admin/login");
           return;
        }

        TopVenteManager topVenteManager = new TopVenteManager();
        ProduitManager produitManager = new ProduitManager();

        String id = req.getParameter("id");
        if (id != null){
            TopVente updateTopVente = topVenteManager.getById(TopVente.class, Integer.parseInt(id));
            req.setAttribute("updateTopVente", updateTopVente);
        }
        req.setAttribute("idTopVenteUpdate", id);
        req.setAttribute("listeTopVente", topVenteManager.list());
        req.setAttribute("listeProduit", produitManager.list());
        req.getRequestDispatcher("/admin/top_vente.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        TopVenteManager topVenteManager = new TopVenteManager();
        ProduitManager produitManager = new ProduitManager();

        String idProduit = req.getParameter("idProduit");
        Produit produit = (Produit) produitManager.getById(Produit.class, Integer.parseInt(idProduit));
        topVenteManager.add(req.getParameter("url"), produit);
        resp.sendRedirect(req.getContextPath() + "/admin/top_vente");
    }
}
