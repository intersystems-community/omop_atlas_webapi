INSERT INTO webapi.source (source_id, source_name, source_key, source_connection, source_dialect)
SELECT nextval('webapi.source_sequence'), 'Cdm', 'CDM', ' jdbc:IRIS://localhost:1972/IRISAPP?user={user}&password={password}', 'sql server';

INSERT INTO webapi.source_daimon (source_daimon_id, source_id, daimon_type, table_qualifier, priority)
SELECT nextval('webapi.source_daimon_sequence'), source_id, 0, 'SQLUser', 0
FROM webapi.source
WHERE source_key = 'CDM'
;

INSERT INTO webapi.source_daimon (source_daimon_id, source_id, daimon_type, table_qualifier, priority)
SELECT nextval('webapi.source_daimon_sequence'), source_id, 1, 'SQLUser', 1
FROM webapi.source
WHERE source_key = 'CDM'
;

INSERT INTO webapi.source_daimon (source_daimon_id, source_id, daimon_type, table_qualifier, priority)
SELECT nextval('webapi.source_daimon_sequence'), source_id, 2, 'results', 1
FROM webapi.source
WHERE source_key = 'CDM'
;

INSERT INTO webapi.source_daimon (source_daimon_id, source_id, daimon_type, table_qualifier, priority)
SELECT nextval('webapi.source_daimon_sequence'), source_id, 5, 'temp', 0
FROM webapi.source
WHERE source_key = 'CDM'
;