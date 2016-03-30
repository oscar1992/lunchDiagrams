/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 12.0 		*/
/*  Created On : 17-mar-2016 07:30:43 p.m. 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */



/* Create Tables */

CREATE TABLE CLI_TFEED
(
	FEED_FEED integer NOT NULL,
	FEED_NIVE integer NULL,
	FEED_COMM varchar(300)	 NULL,
	FEED_FECH date NULL,
	FEED_PADR integer NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE CLI_TFEED ADD CONSTRAINT PK_CLI_TFEED
	PRIMARY KEY (FEED_FEED)
;

CREATE INDEX IXFK_CLI_TFEED_CLI_TPADR ON CLI_TFEED (FEED_PADR ASC)
;


