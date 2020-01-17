package controller.admin;

import manager.ProduitManager;
import manager.SliderManager;
import models.Produit;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SliderController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SliderManager sliderManager = new SliderManager();
        ProduitManager produitManager = new ProduitManager();

        req.setAttribute("listeSlider", sliderManager.list());
        req.setAttribute("listeProduit", produitManager.list());
        req.getRequestDispatcher("/admin/slider.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        SliderManager sliderManager = new SliderManager();
        ProduitManager produitManager = new ProduitManager();

        String idProd = req.getParameter("idProduit");
        Produit produit = (Produit) produitManager.getById(Produit.class, Integer.parseInt(idProd));
        sliderManager.add(req.getParameter("url_photo"), produit);

        resp.sendRedirect(req.getContextPath() + "/admin/slider");
    }
}
