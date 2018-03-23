CREATE DATABASE DB;

CONNECT TO DB;

CREATE SCHEMA "DB" AUTHORIZATION "DB";

SET SCHEMA DB;

CREATE TABLE DUMMY (
		"ID" BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY ( START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 NO CYCLE NO CACHE NO ORDER ),
		"DATA" BLOB(5242880) INLINE LENGTH 196 NOT NULL COMPACT
	)
	ORGANIZE BY ROW
	DATA CAPTURE NONE
	COMPRESS NO;

CONNECT RESET;
