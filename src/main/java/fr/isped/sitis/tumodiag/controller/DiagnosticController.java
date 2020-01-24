package fr.isped.sitis.tumodiag.controller;

import fr.isped.sitis.tumodiag.exception.ResourceNotFoundException;
import fr.isped.sitis.tumodiag.model.Diagnostic;
import fr.isped.sitis.tumodiag.repository.DiagnosticRepository;
import fr.isped.sitis.tumodiag.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
public class DiagnosticController {

    @Autowired
    private DiagnosticRepository diagnosticRepository;

    @Autowired
    private PatientRepository patientRepository;

    @GetMapping("/patients/{patientId}/diagnostics")
    public Page<Diagnostic> getAllDiagnosticsByPatientId(@PathVariable (value = "patientId") Long patientId,
                                                Pageable pageable) {
        return diagnosticRepository.findByPatientId(patientId, pageable);
    }

    @PostMapping("/patients/{patientId}/diagnostics")
    public Diagnostic createDiagnostic(@PathVariable (value = "patientId") Long patientId,
                                 @Valid @RequestBody Diagnostic diagnostic) {
        return patientRepository.findById(patientId).map(patient -> {
            diagnostic.setPatient(patient);
            return diagnosticRepository.save(diagnostic);
        }).orElseThrow(() -> new ResourceNotFoundException("PatientId " + patientId + " not found"));
    }

    @PutMapping("/patients/{patientId}/diagnostics/{diagnosticId}")
    public Diagnostic updateDiagnostic(@PathVariable (value = "patientId") Long patientId,
                                 @PathVariable (value = "diagnosticId") Long diagnosticId,
                                 @Valid @RequestBody Diagnostic diagnosticRequest) {
        if(!patientRepository.existsById(patientId)) {
            throw new ResourceNotFoundException("PatientId " + patientId + " not found");
        }

        return diagnosticRepository.findById(diagnosticId).map(diagnostic -> {
            diagnostic.setMorpho(diagnosticRequest.getMorpho());
            diagnostic.setTopo(diagnosticRequest.getTopo());
            return diagnosticRepository.save(diagnostic);
        }).orElseThrow(() -> new ResourceNotFoundException("DiagnosticId " + diagnosticId + "not found"));
    }

    @DeleteMapping("/patients/{patientId}/diagnostics/{diagnosticId}")
    public ResponseEntity<?> deleteDiagnostic(@PathVariable (value = "patientId") Long patientId,
                                           @PathVariable (value = "diagnosticId") Long diagnosticId) {
        return diagnosticRepository.findByIdAndPatientId(diagnosticId, patientId).map(diagnostic -> {
            diagnosticRepository.delete(diagnostic);
            return ResponseEntity.ok().build();
        }).orElseThrow(() -> new ResourceNotFoundException("Comment not found with id " + diagnosticId + " and patientId " + patientId));
    }
}
