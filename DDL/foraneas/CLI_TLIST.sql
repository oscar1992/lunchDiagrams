ALTER TABLE "CLI_TLIST" ADD CONSTRAINT "FK_CLI_TLIST_ADM_TPROD"
	FOREIGN KEY ("LIST_PROD") REFERENCES "ADM_TPROD" ("PROD_PROD") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "CLI_TLIST" ADD CONSTRAINT "FK_CLI_TLIST_CLI_TDIA"
	FOREIGN KEY ("LIST_DIA") REFERENCES "CLI_TDIA" ("DIA_DIA") ON DELETE No Action ON UPDATE No Action
;