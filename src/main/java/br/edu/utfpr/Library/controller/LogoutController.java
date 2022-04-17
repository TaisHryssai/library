package br.edu.utfpr.Library.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "LogoutController", value = "/logout")
public class LogoutController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie c = new Cookie("username", "");
        HttpSession session = request.getSession();
        session.removeAttribute("username");
        session.invalidate();

        c.setMaxAge(0);
        response.addCookie(c);
        response.sendRedirect("/library");
    }
}
