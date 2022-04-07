package br.edu.utfpr.Library.model.mapper;

import br.edu.utfpr.Library.model.domain.Book;
import br.edu.utfpr.Library.model.domain.User;
import br.edu.utfpr.Library.model.dto.BookDTO;
import br.edu.utfpr.Library.model.dto.UserDTO;

public class BookMapper {
    public static Book toEntity(BookDTO dto){
        Book entity = new Book(dto.getTitle(), dto.getPublishing_company(), dto.getYear(), dto.getSinopse());
        return entity;
    }

    public static BookDTO toDTO(Book entity){
        BookDTO dto = new BookDTO(entity.getTitle(), entity.getPublishing_company(), entity.getYear(), entity.getSinopse());
        return dto;
    }
}
