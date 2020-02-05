package controller;

import manager.ContactManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

public class ContactController extends SMController {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
        req.getRequestDispatcher("/contact.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        ContactManager contactManager = new ContactManager();

        contactManager.add(req.getParameter("nom")
                , req.getParameter("prenom")
                , req.getParameter("email")
                , req.getParameter("objet")
                , req.getParameter("message")
                , new Date());

        resp.sendRedirect(req.getContextPath() + "/contact");
    }
}
