package fr.isped.sitis.tumodiag.model;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
@Entity
@Table(name = "patient")
public class Patient {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @NonNull
    private Long numPatient;

    @NotNull
    @NonNull
    private Integer sexe;

    @NotNull
    @NonNull
    private java.sql.Date dateNaissance;

    @NotNull
    @NonNull
    @Size(max=100)
    private String prenom;

    @NotNull
    @NonNull
    @Size(max=100)
    private String nom;

}

