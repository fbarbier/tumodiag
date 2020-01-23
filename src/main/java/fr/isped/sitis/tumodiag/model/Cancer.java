package fr.isped.sitis.tumodiag.model;

import lombok.Data;
import lombok.NonNull;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Set;

@Data
@Entity
@Table(name = "cancer")
public class Cancer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    private Integer topoIACR;

    @NotNull
    private Integer morphoIACR;

    @ManyToMany(mappedBy = "hasCancerPrimaire")
    Set<Patient> hasPatient;
}