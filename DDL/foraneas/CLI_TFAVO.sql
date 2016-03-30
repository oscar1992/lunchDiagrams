/* Create Foreign Key Constraints */

ALTER TABLE CLI_TFAVO ADD CONSTRAINT FK_CLI_TFAV_ADM_TPROD
	FOREIGN KEY (FAVO_PROD) REFERENCES ADM_TPROD (PROD_PROD) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE CLI_TFAVO ADD CONSTRAINT FK_CLI_TFAV_CLI_TNLON
	FOREIGN KEY (FAVO_NLON) REFERENCES CLI_TNLON (NLON_NLON) ON DELETE No Action ON UPDATE No Action
;