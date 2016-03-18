/* Create Foreign Key Constraints */

ALTER TABLE "ADM_TITEM" ADD CONSTRAINT "FK_ADM_TITEM_ADM_TCOMB"
	FOREIGN KEY ("ITEM_COMB") REFERENCES "ADM_TCOMB" ("COMB_COMB") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "ADM_TITEM" ADD CONSTRAINT "FK_ADM_TITEM_ADM_TPROD"
	FOREIGN KEY ("ITEM_PROD") REFERENCES "ADM_TPROD" ("PROD_PROD") ON DELETE No Action ON UPDATE No Action
;