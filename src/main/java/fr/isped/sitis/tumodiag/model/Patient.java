package fr.isped.sitis.tumodiag.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
@Entity
public class Patient {
    // correspond au NumPatient
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "id", updatable = false, nullable = false)
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

    @NotNull
    @NonNull
    private Boolean freeze;

}
