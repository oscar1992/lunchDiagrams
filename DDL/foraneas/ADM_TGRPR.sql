/* Create Foreign Key Constraints */

ALTER TABLE ADM_TPRGR ADD CONSTRAINT FK_ADM_TPRGR_ADM_TGRUP
	FOREIGN KEY (PRGR_GRUP) REFERENCES ADM_TGRUP (GRUP_GRUP) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE ADM_TPRGR ADD CONSTRAINT FK_ADM_TPRGR_ADM_TPRODUCTO
	FOREIGN KEY (PRGR_PROD) REFERENCES ADM_TPROD (PROD_PROD) ON DELETE No Action ON UPDATE No Action
;