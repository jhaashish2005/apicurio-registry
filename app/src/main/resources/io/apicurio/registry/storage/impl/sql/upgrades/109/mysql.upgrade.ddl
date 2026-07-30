-- *********************************************************************
-- DDL for the Apicurio Registry - Database: MySQL
-- Upgrade Script from 108 to 109
-- *********************************************************************

UPDATE apicurio SET propValue = 109 WHERE propName = 'db_version';
