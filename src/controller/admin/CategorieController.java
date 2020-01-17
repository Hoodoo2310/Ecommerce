package controller.admin;

import manager.CategorieManager;
import models.Categorie;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CategorieController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CategorieManager categorieManager = new CategorieManager();

        req.setAttribute("listeCategorie", categorieManager.list());
        req.getRequestDispatcher("/admin/categorie.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        CategorieManager categorieManager = new CategorieManager();

        String id = req.getParameter("id");
        if (id != null){
            Categorie updateCategorie = categorieManager.getById(Categorie.class, Integer.parseInt(id));
            req.setAttribute("updateCategorie", updateCategorie);
        }

        categorieManager.add(req.getParameter("nom"));
        resp.sendRedirect(req.getContextPath() + "/admin/categorie");
    }
}
