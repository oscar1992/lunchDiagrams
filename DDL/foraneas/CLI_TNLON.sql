/* Create Foreign Key Constraints */

ALTER TABLE CLI_TNLON ADD CONSTRAINT FK_CLI_TNLON_CLI_TPADR
	FOREIGN KEY (NLON_PADR) REFERENCES CLI_TPADR (PADR_PADR) ON DELETE No Action ON UPDATE No Action
;