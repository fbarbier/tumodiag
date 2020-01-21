package fr.isped.sitis.tumodiag.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Data
@Entity
@Table(name = "cancer")
public class Cancer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    private String topoIACR;

    @NotNull
    private String morphoIACR;
}
