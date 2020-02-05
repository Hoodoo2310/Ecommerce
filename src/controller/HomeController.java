package controller;

import manager.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

public class HomeController extends SMController {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
        SliderManager sliderManager = new SliderManager();

        req.setAttribute("listeSlider", sliderManager.list());
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        NewsletterManager newsletterManager = new NewsletterManager();

        newsletterManager.add(req.getParameter("email"), new Date());
        resp.sendRedirect(req.getContextPath() + "/");
    }
}
