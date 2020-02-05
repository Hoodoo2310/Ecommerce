package controller.checkout;

import controller.SMController;
import fonctions.MaSession;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CheckoutStep3Controller extends SMController {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
        MaSession maSession = new MaSession(req.getSession());
        if (maSession.isUser() == false){
            resp.sendRedirect("/login.jsp");
            return;
        }
        req.getRequestDispatcher("/checkout-step3.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        resp.sendRedirect(req.getContextPath() + "/detail_produit");
    }
}
