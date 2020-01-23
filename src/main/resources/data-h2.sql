
INSERT INTO `Trait` (`id`, `sexe`, `date_naissance`, `prenom`, `nom`) VALUES
(100130, 1, '2003-09-27', 'JAMES', 'ELOSTE'),
(100324, 2, '1970-12-18', 'SIMONE', 'RIRKIA'),
(100578, 2, '1955-10-02', 'JACQUELINE', 'FROIRE');

Insert Into `Cim10` (`id`, `dp`, `dr`, `das`, `trait_id`) VALUES
(1, 'C04.1', null, null, 100130),
(2, 'Z511', 'C761', null, 100324),
(3, 'I64', null, 'I65.2', 100578);

Insert Into `Adicap` (`id`, `adicap1`, `adicap2`, `trait_id`) VALUES
(1, 'BHOTE4P1', null, 100130),
(2, 'BHBXE7A0', 'C761', 100324),
(3, 'PHUVU7H3', null, 100578);

Insert Into `Patient` (`id`, `doublon`, `trait_id`) VALUES
(1, false, 100130),
(2, false, 100324),
(3, false, 100578);

Insert Into `Diagnostic` (`id`, `topo`, `morpho`, `patient_id`) VALUES
(1, 'C443', '80003', 1),
(2, 'C443', '80003', 2),
(3, 'C444', '80003', 3);

Insert Into `Cancer` (`id`, `topoiacr`, `morphoiacr`) VALUES
(1, 52, 13),
(2, 31, 11),
(3, 20, 16),
(4, 5, 3),
(5, 29, 9),
(6, 40, 15);

Insert Into `patient_primary_cancer` (`patient_id`, `cancer_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6);