create role git_demo_admin;
create role git_demo_analyst;
create role git_demo_engineer;

grant usage on database sandbox_db to role git_demo_admin;
grant usage on database sandbox_db to role git_demo_analyst;
grant usage on database sandbox_db to role git_demo_engineer;

grant create schema on database sandbox_db to role git_demo_admin;
grant usage on schema sandbox_db.public to role git_demo_admin;
grant usage on all procedures in schema sandbox_db.public to role git_demo_admin;
grant read, write on git repository sandbox_db.public.git_sample to role git_demo_admin;