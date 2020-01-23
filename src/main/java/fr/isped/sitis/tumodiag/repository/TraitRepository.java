package fr.isped.sitis.tumodiag.repository;

import fr.isped.sitis.tumodiag.model.Trait;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TraitRepository extends JpaRepository<Trait, Long> {

    public Trait findByNom(String nom);
}
