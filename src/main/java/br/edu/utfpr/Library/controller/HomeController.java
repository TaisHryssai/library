package br.edu.utfpr.Library.controller;

import br.edu.utfpr.Library.model.dao.BookDAO;
import br.edu.utfpr.Library.model.domain.Book;
import br.edu.utfpr.Library.service.BookService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.servlet.ServletException;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "HomeController", value = "/lista")
public class HomeController extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession(false);

        BookDAO bookDAO = new BookDAO();

//        String username = (String) session.getAttribute("username");

        List<Book> listCatagory = bookDAO.findAll();
        request.setAttribute("books", listCatagory);
//
//        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
//        dispatcher.forward(request, response);


        request.getRequestDispatcher("/WEB-INF/view/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    public void destroy() {
    }
}
