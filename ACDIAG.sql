;              
CREATE USER IF NOT EXISTS "SA" SALT 'b2fdc5863bf5aaeb' HASH 'd0c5b854e1e3de19939b82eff53f727afadf89df44aab7620676b952be0c0f38' ADMIN;          
CREATE SEQUENCE "public"."SYSTEM_SEQUENCE_2498E66A_8612_4B46_841D_B97A18A759B9" START WITH 4 BELONGS_TO_TABLE; 
CREATE SEQUENCE "public"."SYSTEM_SEQUENCE_102332E4_02C7_40BF_A14F_7B0C8DF274FB" START WITH 7 BELONGS_TO_TABLE; 
CREATE SEQUENCE "public"."hibernate_sequence" START WITH 1;    
CREATE SEQUENCE "public"."SYSTEM_SEQUENCE_DF666E02_22C7_49E3_83F8_F876EC8093C9" START WITH 4 BELONGS_TO_TABLE; 
CREATE SEQUENCE "public"."SYSTEM_SEQUENCE_8F13F23D_9FAA_4D54_9CBC_E941647BDB9A" START WITH 4 BELONGS_TO_TABLE; 
CREATE SEQUENCE "public"."SYSTEM_SEQUENCE_9F083DC7_E82C_4712_9665_F6151F6C35E1" START WITH 4 BELONGS_TO_TABLE; 
CREATE MEMORY TABLE "public"."adicap"(
    "id" BIGINT DEFAULT NEXT VALUE FOR "public"."SYSTEM_SEQUENCE_8F13F23D_9FAA_4D54_9CBC_E941647BDB9A" NOT NULL NULL_TO_DEFAULT SEQUENCE "public"."SYSTEM_SEQUENCE_8F13F23D_9FAA_4D54_9CBC_E941647BDB9A",
    "adicap1" VARCHAR(255) NOT NULL,
    "adicap2" VARCHAR(255),
    "trait_id" BIGINT NOT NULL
);            
ALTER TABLE "public"."adicap" ADD CONSTRAINT "public"."CONSTRAINT_A" PRIMARY KEY("id");        
-- 3 +/- SELECT COUNT(*) FROM public.adicap;   
INSERT INTO "public"."adicap" VALUES
(1, 'C04.1', NULL, 100130),
(2, 'Z511', 'C761', 100324),
(3, 'I64', NULL, 100578);        
CREATE MEMORY TABLE "public"."cancer"(
    "id" BIGINT DEFAULT NEXT VALUE FOR "public"."SYSTEM_SEQUENCE_102332E4_02C7_40BF_A14F_7B0C8DF274FB" NOT NULL NULL_TO_DEFAULT SEQUENCE "public"."SYSTEM_SEQUENCE_102332E4_02C7_40BF_A14F_7B0C8DF274FB",
    "morphoiacr" INTEGER NOT NULL,
    "topoiacr" INTEGER NOT NULL
);         
ALTER TABLE "public"."cancer" ADD CONSTRAINT "public"."CONSTRAINT_AE" PRIMARY KEY("id");       
-- 6 +/- SELECT COUNT(*) FROM public.cancer;   
INSERT INTO "public"."cancer" VALUES
(1, 13, 52),
(2, 11, 31),
(3, 16, 20),
(4, 3, 5),
(5, 9, 29),
(6, 15, 40);
CREATE MEMORY TABLE "public"."cim10"(
    "id" BIGINT DEFAULT NEXT VALUE FOR "public"."SYSTEM_SEQUENCE_2498E66A_8612_4B46_841D_B97A18A759B9" NOT NULL NULL_TO_DEFAULT SEQUENCE "public"."SYSTEM_SEQUENCE_2498E66A_8612_4B46_841D_B97A18A759B9",
    "das" VARCHAR(255),
    "dp" VARCHAR(255) NOT NULL,
    "dr" VARCHAR(255),
    "trait_id" BIGINT NOT NULL
);               
ALTER TABLE "public"."cim10" ADD CONSTRAINT "public"."CONSTRAINT_5" PRIMARY KEY("id");         
-- 3 +/- SELECT COUNT(*) FROM public.cim10;    
INSERT INTO "public"."cim10" VALUES
(1, NULL, 'C04.1', NULL, 100130),
(2, NULL, 'Z511', 'C761', 100324),
(3, 'I65.2', 'I64', NULL, 100578);    
CREATE MEMORY TABLE "public"."diagnostic"(
    "id" BIGINT DEFAULT NEXT VALUE FOR "public"."SYSTEM_SEQUENCE_9F083DC7_E82C_4712_9665_F6151F6C35E1" NOT NULL NULL_TO_DEFAULT SEQUENCE "public"."SYSTEM_SEQUENCE_9F083DC7_E82C_4712_9665_F6151F6C35E1",
    "morpho" VARCHAR(255),
    "topo" VARCHAR(255) NOT NULL,
    "patient_id" BIGINT NOT NULL
);          
ALTER TABLE "public"."diagnostic" ADD CONSTRAINT "public"."CONSTRAINT_A3" PRIMARY KEY("id");   
-- 3 +/- SELECT COUNT(*) FROM public.diagnostic;               
INSERT INTO "public"."diagnostic" VALUES
(1, '80003', 'C443', 1),
(2, '80003', 'C443', 2),
(3, '80003', 'C444', 3);            
CREATE MEMORY TABLE "public"."patient"(
    "id" BIGINT DEFAULT NEXT VALUE FOR "public"."SYSTEM_SEQUENCE_DF666E02_22C7_49E3_83F8_F876EC8093C9" NOT NULL NULL_TO_DEFAULT SEQUENCE "public"."SYSTEM_SEQUENCE_DF666E02_22C7_49E3_83F8_F876EC8093C9",
    "doublon" BOOLEAN NOT NULL,
    "trait_id" BIGINT NOT NULL
);            
ALTER TABLE "public"."patient" ADD CONSTRAINT "public"."CONSTRAINT_D" PRIMARY KEY("id");       
-- 3 +/- SELECT COUNT(*) FROM public.patient;  
INSERT INTO "public"."patient" VALUES
(1, FALSE, 100130),
(2, FALSE, 100324),
(3, FALSE, 100578);              
CREATE MEMORY TABLE "public"."patient_primary_cancer"(
    "patient_id" BIGINT NOT NULL,
    "cancer_id" BIGINT NOT NULL
);    
ALTER TABLE "public"."patient_primary_cancer" ADD CONSTRAINT "public"."CONSTRAINT_4" PRIMARY KEY("patient_id", "cancer_id");   
-- 6 +/- SELECT COUNT(*) FROM public.patient_primary_cancer;   
INSERT INTO "public"."patient_primary_cancer" VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6);           
CREATE MEMORY TABLE "public"."trait"(
    "id" BIGINT NOT NULL,
    "date_naissance" DATE NOT NULL,
    "nom" VARCHAR(100) NOT NULL,
    "prenom" VARCHAR(100) NOT NULL,
    "sexe" INTEGER NOT NULL
);        
ALTER TABLE "public"."trait" ADD CONSTRAINT "public"."CONSTRAINT_6" PRIMARY KEY("id");         
-- 3 +/- SELECT COUNT(*) FROM public.trait;    
INSERT INTO "public"."trait" VALUES
(100130, DATE '2003-09-27', 'ELOSTE', 'JAMES', 1),
(100324, DATE '1970-12-18', 'RIRKIA', 'SIMONE', 2),
(100578, DATE '1955-10-02', 'FROIRE', 'JACQUELINE', 2);             
ALTER TABLE "public"."adicap" ADD CONSTRAINT "public"."fk5rlvwu38trvy264tsbejru1wu" FOREIGN KEY("trait_id") REFERENCES "public"."trait"("id") ON DELETE CASCADE NOCHECK;       
ALTER TABLE "public"."cim10" ADD CONSTRAINT "public"."fkngayajyrv0xy714eum1v68jdb" FOREIGN KEY("trait_id") REFERENCES "public"."trait"("id") ON DELETE CASCADE NOCHECK;        
ALTER TABLE "public"."patient_primary_cancer" ADD CONSTRAINT "public"."fk26m4hpd8hkio4cpyyxy4pn814" FOREIGN KEY("patient_id") REFERENCES "public"."patient"("id") NOCHECK;     
ALTER TABLE "public"."patient" ADD CONSTRAINT "public"."fk3p6a5y5rxbro6rwq7n3qcm8se" FOREIGN KEY("trait_id") REFERENCES "public"."trait"("id") NOCHECK;        
ALTER TABLE "public"."diagnostic" ADD CONSTRAINT "public"."fk1oe3f0q2303ugfvswtpx61rho" FOREIGN KEY("patient_id") REFERENCES "public"."patient"("id") ON DELETE CASCADE NOCHECK;               
ALTER TABLE "public"."patient_primary_cancer" ADD CONSTRAINT "public"."fkduc6o66pfk5xfeaj33dlw0ct8" FOREIGN KEY("cancer_id") REFERENCES "public"."cancer"("id") NOCHECK;       
