package br.edu.utfpr.Library.model.mapper;

import br.edu.utfpr.Library.model.domain.Book;
import br.edu.utfpr.Library.model.domain.User;
import br.edu.utfpr.Library.model.dto.BookDTO;
import br.edu.utfpr.Library.model.dto.UserDTO;

public class UserMapper {
    public UserMapper getInstance(){
        return new UserMapper();
    }

    public static User toEntity(UserDTO dto){
        Book book = BookMapper.toEntity(dto.getBook());
        User entity = new User(dto.getName(), dto.getPhone(), dto.getEmail(), dto.getDate(), book);

        return entity;
    }

    public static UserDTO toDTO(User entity){
        BookDTO bookDTO = BookMapper.toDTO(entity.getBook());
        UserDTO dto = new UserDTO(entity.getName(), entity.getEmail(), entity.getPhone(), entity.getDate(), bookDTO);

        return dto;
    }
}
