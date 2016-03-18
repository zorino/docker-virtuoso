-- GPLv2 see : https://github.com/dbpedia/dbpedia-docs

select 'Clearing $ARGV[$I] graph ...';
-- Add here all the graphs we use for a clean update (RDF_GLOBAL_RESET deletes them all)
SPARQL CLEAR GRAPH <$ARGV[$I]>;
