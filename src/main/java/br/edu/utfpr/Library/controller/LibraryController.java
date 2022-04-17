package br.edu.utfpr.Library.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "LibraryController", value = "/library")
public class LibraryController extends HttpServlet {
    public LibraryController() {
        super();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/view/register-book.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("user");
        if(user == ""){
            System.out.println("----->>>>> Vazio");
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        } else{
            HttpSession session = request.getSession();
            session.setAttribute("username", user);
            response.sendRedirect("lista");
        }
    }
}
