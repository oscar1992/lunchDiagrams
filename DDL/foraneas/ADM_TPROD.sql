/* Create Foreign Key Constraints */

ALTER TABLE ADM_TPROD ADD CONSTRAINT FK_ADM_TPRODUCTO_ADM_TCATE
	FOREIGN KEY (PROD_CATE) REFERENCES ADM_TCATE (CATE_CATE) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE ADM_TPROD ADD CONSTRAINT FK_ADM_TPRODUCTO_ADM_TMARC
	FOREIGN KEY (PROD_MARC) REFERENCES ADM_TMARC (MARC_MARC) ON DELETE No Action ON UPDATE No Action
;