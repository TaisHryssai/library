package br.edu.utfpr.Library.controller;

import br.edu.utfpr.Library.model.domain.Book;
import br.edu.utfpr.Library.model.dto.BookDTO;
import br.edu.utfpr.Library.model.mapper.BookMapper;
import br.edu.utfpr.Library.service.BookService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "RegisterBookController", value = "/cadastrar-livro")
public class RegisterBookController extends HttpServlet {
    BookService bookService = new BookService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/view/register-book.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String publishing_company = request.getParameter("publishing_company");
        String year = request.getParameter("year");
        String sinopse = request.getParameter("sinopse");
        Integer qtd = Integer.parseInt(request.getParameter("qtd"));

        List<Book> booksApp = (List<Book>) getServletContext().getAttribute("books");
        if(booksApp == null){
            booksApp = new ArrayList<>();
            getServletContext().setAttribute("books", booksApp);
        }

        Book book = new Book(title, publishing_company, year, sinopse, qtd);
        bookService.save(book);
//        BookDTO bookDTO = BookMapper.toDTO(book);

        request.getSession(true).setAttribute("book", book);

        booksApp.add(book);
        getServletContext().setAttribute("books", booksApp);

        request.setAttribute("flash.book", book);
        response.sendRedirect("lista");
    }
    public void destroy() {
    }
}
