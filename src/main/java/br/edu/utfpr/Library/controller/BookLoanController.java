package br.edu.utfpr.Library.controller;

import br.edu.utfpr.Library.model.dao.BookDAO;
import br.edu.utfpr.Library.model.domain.Book;
import br.edu.utfpr.Library.model.domain.User;
import br.edu.utfpr.Library.model.dto.BookDTO;
import br.edu.utfpr.Library.model.dto.UserDTO;
import br.edu.utfpr.Library.model.mapper.BookMapper;
import br.edu.utfpr.Library.model.mapper.UserMapper;
import br.edu.utfpr.Library.service.BookService;
import br.edu.utfpr.Library.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "BookLoanController", value = "/emprestar-livro")
public class BookLoanController extends HttpServlet {
    UserService userService = new UserService();
    BookService bookService = new BookService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/WEB-INF/view/book-loan.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String date = request.getParameter("date");
        Long isBook = Long.parseLong(request.getParameter("book_id"));

        List<User> userApp = (List<User>) getServletContext().getAttribute("user");
        if(userApp == null){
            userApp = new ArrayList<>();
            getServletContext().setAttribute("user", userApp);
        }
        BookDAO bookDAO = new BookDAO();

        Book book1 = new Book();

//        book1 =  bookDAO.getById(isBook);

        book1 = bookService.getById(isBook);

        System.out.println("----->>>>> " + isBook);

        System.out.println("----->>>>> " + bookDAO);

        User user = new User(name, email, phone, date, book1);

        Integer qtd_restante = book1.getQtd();
        Integer result = qtd_restante - 1;
        book1.setQtd(result);

        bookService.update(book1);
        userService.save(user);

        UserDTO userDTO = UserMapper.toDTO(user);

        userApp.add(user);

        getServletContext().setAttribute("users", userApp);
        bookService.findAll();
//        List<Book> bookDAO = (List<Book>) getServletContext().getAttribute("books");

        getServletContext().setAttribute("books", bookService);

        request.setAttribute("flash.user", user);
        request.setAttribute("flash.book", book1);

        response.sendRedirect("lista");
    }
    public void destroy() {
    }
}
