package fr.isped.sitis.tumodiag.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Data
@Entity
@Table(name = "adicap")
public class Adicap {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    private String adicap1;

    @NotNull
    private String adicap2;

}
