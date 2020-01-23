package fr.isped.sitis.tumodiag.controller;

import fr.isped.sitis.tumodiag.exception.ResourceNotFoundException;
import fr.isped.sitis.tumodiag.model.Trait;
import fr.isped.sitis.tumodiag.repository.TraitRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
public class TraitController {

    @Autowired
    private TraitRepository traitRepository;

    @GetMapping("/traits")
    public Page<Trait> getAllTraits(Pageable pageable) {
        return traitRepository.findAll(pageable);
    }

    @PostMapping("/traits")
    public Trait createTrait(@Valid @RequestBody Trait trait) {
        return traitRepository.save(trait);
    }

    @PutMapping("/traits/{traitId}")
    public Trait updateTrait(@PathVariable Long traitId, @Valid @RequestBody Trait traitRequest) {
        return traitRepository.findById(traitId).map(post -> {
            post.setSexe(traitRequest.getSexe());
            post.setDateNaissance(traitRequest.getDateNaissance());
            post.setPrenom(traitRequest.getPrenom());
            post.setNom(traitRequest.getNom());
            return traitRepository.save(post);
        }).orElseThrow(() -> new ResourceNotFoundException("TraitId " + traitId + " not found"));
    }

    @DeleteMapping("/traits/{traitId}")
    public ResponseEntity<?> deleteTrait(@PathVariable Long traitId) {
        return traitRepository.findById(traitId).map(trait -> {
            traitRepository.delete(trait);
            return ResponseEntity.ok().build();
        }).orElseThrow(() -> new ResourceNotFoundException("TraitId " + traitId + " not found"));
    }
}
