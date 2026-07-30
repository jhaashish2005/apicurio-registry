-- *********************************************************************
-- DDL for the Apicurio Registry - Database: postgresql
-- Upgrade Script from 108 to 109
-- *********************************************************************

UPDATE apicurio SET propValue = 109 WHERE propName = 'db_version';

-- Safe UTF-8 conversion function for full-text search over content blobs.
-- Returns NULL instead of raising on invalid byte sequences.
CREATE OR REPLACE FUNCTION safe_convert_to_text(data BYTEA) RETURNS TEXT AS $$
BEGIN
    RETURN convert_from(data, 'UTF8');
EXCEPTION WHEN OTHERS THEN
    RETURN NULL;
END;
$$ LANGUAGE plpgsql IMMUTABLE;
