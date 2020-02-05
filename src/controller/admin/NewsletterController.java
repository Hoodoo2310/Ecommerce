package controller.admin;

import manager.NewsletterManager;
import models.Newsletter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class NewsletterController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if (session.getAttribute("connect") == null){
            resp.sendRedirect("/admin/login");
            return;
        }

        NewsletterManager newsletterManager = new NewsletterManager();

        String id = req.getParameter("id");
        if (id != null){
            Newsletter updateNewsletter = newsletterManager.getById(Newsletter.class, Integer.parseInt(id));
            req.setAttribute("updateNewsletter", updateNewsletter);
        }
        req.setAttribute("idNewsletterUpdate", id);
        req.setAttribute("listeNewsletter", newsletterManager.list());
        req.getRequestDispatcher("/admin/newsletter.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        NewsletterManager newsletterManager = new NewsletterManager();
        DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        String action = req.getParameter("action");
        if (action.equals("deleteNewsletter")){
            String id = req.getParameter("id");
            Newsletter newsletter = (Newsletter) newsletterManager.getById(Newsletter.class, Integer.parseInt(id));
            newsletterManager.delete(newsletter);
        }else if (action.equals("updateNewsletter")){
            String id = req.getParameter("idNewsletterUpdate");
            Newsletter newsletter = (Newsletter) newsletterManager.getById(Newsletter.class, Integer.parseInt(id));
            newsletter.setId(Integer.parseInt(id));
            newsletter.setEmail(req.getParameter("email"));
            newsletter.setDate_inscription(newsletter.getDate_inscription());
            newsletterManager.update(newsletter);
        }
        resp.sendRedirect(req.getContextPath() + "/admin/newsletter");
    }
}
