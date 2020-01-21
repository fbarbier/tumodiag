package fr.isped.sitis.tumodiag.repository;

import fr.isped.sitis.tumodiag.model.Patient;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PatientRepository extends JpaRepository<Patient, Long> {

    public Patient findByNom(String nom);

   // public Patient updatePatient(Long patientId);
}
