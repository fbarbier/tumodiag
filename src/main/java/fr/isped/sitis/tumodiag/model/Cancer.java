package fr.isped.sitis.tumodiag.model;

import lombok.Data;
import lombok.NonNull;

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
    @NonNull
    private Long numPatient;

    @NotNull
    private Integer topoIACR;

    @NotNull
    private Integer morphoIACR;
}
