package controller.admin;

import manager.CategorieManager;
import manager.ProduitManager;
import manager.UtilisateurManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class DashBoardController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if (session.getAttribute("connect") == null){
            resp.sendRedirect("/admin/login");
            return;
        }

        CategorieManager categorieManager = new CategorieManager();
        ProduitManager produitManager = new ProduitManager();
        UtilisateurManager utilisateurManager = new UtilisateurManager();
        req.setAttribute("nbCategorie", categorieManager.list().size());
        req.setAttribute("nbProduit", produitManager.list().size());
        req.setAttribute("nbUtilisateur", utilisateurManager.list().size());
        req.getRequestDispatcher("/admin/dashboard.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        resp.sendRedirect(req.getContextPath() + "/admin/dashboard");
    }
}
