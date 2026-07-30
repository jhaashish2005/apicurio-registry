-- *********************************************************************
-- DDL for the Apicurio Registry - Database: H2
-- Upgrade Script from 108 to 109
-- *********************************************************************

UPDATE apicurio SET propValue = 109 WHERE propName = 'db_version';
