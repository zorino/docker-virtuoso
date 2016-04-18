-- See if we have any errors
select 'Looking for loading errors ...';
select * from DB.DBA.load_list where ll_state <> 2;
