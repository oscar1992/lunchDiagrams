/* Create Foreign Key Constraints */

ALTER TABLE ADM_TINFO ADD CONSTRAINT FK_ADM_TINFO_ADM_TPROD
	FOREIGN KEY (INFO_PROD) REFERENCES ADM_TPROD (PROD_PROD) ON DELETE No Action ON UPDATE No Action
;