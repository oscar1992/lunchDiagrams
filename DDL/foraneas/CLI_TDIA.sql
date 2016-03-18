/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE "CLI_TDIA" ADD CONSTRAINT "PK_CLI_TDIA"
	PRIMARY KEY ("DIA_DIA")
;

CREATE INDEX "IXFK_CLI_TDIA_CLI_TNINO" ON "CLI_TDIA" ("DIA_NINO" ASC)
;

/* Create Foreign Key Constraints */

ALTER TABLE "CLI_TDIA" ADD CONSTRAINT "FK_CLI_TDIA_CLI_TNINO"
	FOREIGN KEY ("DIA_NINO") REFERENCES "CLI_TNINO" ("NINO_NINO") ON DELETE No Action ON UPDATE No Action
;