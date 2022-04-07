package br.edu.utfpr.Library.model.dto;
import lombok.Data;
import lombok.NonNull;
@Data
public class BookDTO {
    @NonNull
    private String title;
    @NonNull
    private String publishing_company;
    @NonNull
    private String year;
    @NonNull
    private String sinopse;
}
