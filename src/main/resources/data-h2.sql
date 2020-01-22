
INSERT INTO `Patient` (`id`, `num_patient`, `sexe`, `date_naissance`, `prenom`, `nom`) VALUES
(1, 100130, 1, '2003-09-27', 'JAMES', 'ELOSTE'),
(2, 100324, 2, '1970-12-18', 'SIMONE', 'RIRKIA'),
(3, 100578, 2, '1955-10-02', 'JACQUELINE', 'FROIRE');


Insert Into `Diagnostic` (`id`, `dp`, `dr`, `das`, `patient_id`) VALUES
(1, 'C04.1', null, null, 1),
(2, 'Z511', 'C761', null, 2),
(3, 'I64', null, 'I65.2', 3);


Insert Into `Cancer` (`id`, `num_patient`, `topoiacr`, `morphoiacr`) VALUES
(1, 100130, 52, 13),
(2, 100130, 31, 11),
(3, 100324, 20, 16),
(4, 100324, 5, 3),
(5, 100578, 29, 9),
(6, 100578, 40, 15);