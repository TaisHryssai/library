package br.edu.utfpr.Library.model.domain;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "books")
@Data(staticConstructor = "of")
@NoArgsConstructor
@RequiredArgsConstructor(access = AccessLevel.PUBLIC)
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NonNull
    private String title;
    @NonNull
    private String publishing_company;
    @NonNull
    private String year;
    @NonNull
    private String sinopse;
    @NonNull
    private String qtd;
}
