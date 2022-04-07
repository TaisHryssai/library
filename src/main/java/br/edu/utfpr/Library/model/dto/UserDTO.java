package br.edu.utfpr.Library.model.dto;
import lombok.Data;
import lombok.NonNull;
@Data
public class UserDTO {
    @NonNull
    private String name;
    @NonNull
    private String phone;
    @NonNull
    private String email;
    @NonNull
    private String date;

    @NonNull
    private  BookDTO book;
}
