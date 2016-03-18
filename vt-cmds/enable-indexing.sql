-- GPLv2 see : https://github.com/dbpedia/dbpedia-docs

--indexing is used both by the virtuoso built-in function (e.g. bif:contains)
--# re-enable auto-index
select 'Enabling indexing...';
DB.DBA.RDF_OBJ_FT_RULE_ADD (null, null, 'All');
DB.DBA.VT_INC_INDEX_DB_DBA_RDF_OBJ ();

-- enable geo-indexing
rdf_geo_fill();
