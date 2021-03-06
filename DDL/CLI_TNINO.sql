/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 12.0 		*/
/*  Created On : 17-mar-2016 07:17:19 p.m. 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Drop Tables */

DROP TABLE IF EXISTS "CLI_TNINO" CASCADE
;

/* Create Tables */

CREATE TABLE "CLI_TNINO"
(
	"NINO_NINO" integer NOT NULL,
	"NINO_FECH" date NULL,
	"NINO_GENE" varchar(1)	 NULL,
	"NINO_PADR" integer NULL,
	"NINO_NOMB" varchar(100)	 NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE "CLI_TNINO" ADD CONSTRAINT "PK_CLI_TNINO"
	PRIMARY KEY ("NINO_NINO")
;

CREATE INDEX "IXFK_CLI_TNINO_CLI_TPADR" ON "CLI_TNINO" ("NINO_PADR" ASC)
;

/* Create Foreign Key Constraints */

ALTER TABLE "CLI_TNINO" ADD CONSTRAINT "FK_CLI_TNINO_CLI_TPADR"
	FOREIGN KEY ("NINO_PADR") REFERENCES "CLI_TPADR" ("PADR_PADR") ON DELETE No Action ON UPDATE No Action
;
