package br.edu.utfpr.Library.controller;

import br.edu.utfpr.Library.model.domain.Book;
import br.edu.utfpr.Library.model.dto.BookDTO;
import br.edu.utfpr.Library.model.mapper.BookMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "LibraryController", value = "/library")
public class LibraryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("user");

        if(user == null){
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }else{

            request.getSession(true).setAttribute("user", user);
            request.setAttribute("user", user);

            request.getRequestDispatcher("/WEB-INF/view/index.jsp").forward(request, response);
        }

        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("user");

        if(user == null){
            getServletContext().setAttribute("user", user);
        }
        request.getSession(true).setAttribute("user", user);

        Cookie c = new Cookie("user", user);
        c.setMaxAge(60 * 60 * 24);

        request.setAttribute("user", user);
        response.addCookie(c);
        response.sendRedirect("lista");
    }
}
