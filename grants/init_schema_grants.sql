grant usage on schema sandbox_db.git_demo to role git_demo_analyst;
grant select on all tables in schema sandbox_db.git_demo to role git_demo_analyst;

grant role git_demo_analyst to role git_demo_engineer;
grant insert, update, delete, truncate on all tables in schema sandbox_db.git_demo to rolegit_demo_engineer;
grant select, insert, update, delete, truncate on future tables in schema sandbox_db.git_demo to rolegit_demo_engineer;