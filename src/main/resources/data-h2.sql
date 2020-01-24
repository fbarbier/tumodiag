
INSERT INTO `Patient` (`id`, `num_patient`, `sexe`, `date_naissance`, `prenom`, `nom`) VALUES
(1, 100130, 1, '2003-09-27', 'JAMES', 'ELOSTE'),
(2, 100324, 2, '1970-12-18', 'SIMONE', 'RIRKIA'),
(3, 100578, 2, '1955-10-02', 'JACQUELINE', 'FROIRE');

Insert Into `Diagnostic` (`id`, `topo`, `morpho`, `patient_id`) VALUES
(1, 'C443', '80003', 1),
(2, 'C443', '80003', 2),
(3, 'C444', '80003', 3);

Insert Into `Cim10` (`id`, `dp`, `dr`, `das`, `diagnostic_id`) VALUES
(1, 'C04.1', null, null, 1),
(2, 'Z511', 'C761', null, 2),
(3, 'I64', null, 'I65.2', 3);

Insert Into `Adicap` (`id`, `adicap1`, `adicap2`, `diagnostic_id`) VALUES
(1, 'BHOTE4P1', null, 1),
(2, 'BHBXE7A0', 'C761', 2),
(3, 'PHUVU7H3', null, 3);

Insert Into `Cancer` (`id`, `topoiacr`, `morphoiacr`, `patient_id`) VALUES
(1, 52, 13, 1),
(2, 31, 11, 1),
(3, 20, 16, 2),
(4, 5, 3, 2),
(5, 29, 9, 3),
(6, 40, 15, 3);
