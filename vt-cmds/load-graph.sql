-- GPLv2 see : https://github.com/dbpedia/dbpedia-docs

-- Disable auto indexing before doing bulk insertions / deletions

-- Deleting previous entries of loader script
delete from DB.DBA.load_list;

-- see http://www.openlinksw.com/dataspace/dav/wiki/Main/VirtBulkRDFLoader
select 'Loading data into $ARGV[7] graph...';
--      <folder with data>  <pattern>    <default graph if no graph file specified>

ld_dir ('$ARGV[6]', '*.*', '$ARGV[7]');
rdf_loader_run();

-- renable auto-indexing once finished with bulk operations
