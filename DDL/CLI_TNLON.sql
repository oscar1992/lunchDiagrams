/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 12.0 		*/
/*  Created On : 17-mar-2016 07:20:06 p.m. 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Drop Tables */

DROP TABLE IF EXISTS "CLI_TNLON" CASCADE
;

/* Create Tables */

CREATE TABLE "CLI_TNLON"
(
	"NLON_NLON" integer NOT NULL,
	"NLON_NOMB" varchar(50)	 NULL,
	"NLON_PADR" integer NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE "CLI_TNLON" ADD CONSTRAINT "PK_CLI_TNLON"
	PRIMARY KEY ("NLON_NLON")
;

CREATE INDEX "IXFK_CLI_TNLON_CLI_TPADR" ON "CLI_TNLON" ("NLON_PADR" ASC)
;

/* Create Foreign Key Constraints */

ALTER TABLE "CLI_TNLON" ADD CONSTRAINT "FK_CLI_TNLON_CLI_TPADR"
	FOREIGN KEY ("NLON_PADR") REFERENCES "CLI_TPADR" ("PADR_PADR") ON DELETE No Action ON UPDATE No Action
;
