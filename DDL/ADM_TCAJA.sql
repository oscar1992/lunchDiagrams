/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 12.0 		*/
/*  Created On : 17-mar-2016 08:48:59 p.m. 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Drop Tables */

DROP TABLE IF EXISTS "ADM_TCAJA" CASCADE
;

/* Create Tables */

CREATE TABLE "ADM_TCAJA"
(
	"CAJA_CAJA" integer NOT NULL,
	"CAJA_NOMB" varchar(50)	 NULL,
	"CAJA_COLO" varchar(50)	 NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE "ADM_TCAJA" ADD CONSTRAINT "PK_ADM_TCAJA"
	PRIMARY KEY ("CAJA_CAJA")
;
