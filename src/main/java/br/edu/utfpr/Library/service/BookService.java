package br.edu.utfpr.Library.service;

import br.edu.utfpr.Library.model.dao.BookDAO;
import br.edu.utfpr.Library.model.domain.Book;

public class BookService extends  AbstractService<Long, Book>{
    public BookService() {
        dao = new BookDAO();
    }
}
