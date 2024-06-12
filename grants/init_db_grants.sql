create role if not exists git_demo_admin;
create role if not exists git_demo_analyst;
create role if not exists git_demo_engineer;

--generally these roles should be granted to a business role or an azure user role
grant role git_demo_admin to user dgarrison;
grant role git_demo_analyst to user dgarrison;
grant role git_demo_engineer to user dgarrison;

--give access to database
grant usage on database sandbox_db to role git_demo_admin;
grant usage on database sandbox_db to role git_demo_analyst;
grant usage on database sandbox_db to role git_demo_engineer;

--allow admin to create a schema
grant create schema on database sandbox_db to role git_demo_admin;

--give admin access to schema repo and procedures
grant usage on schema sandbox_db.public to role git_demo_admin;
grant usage on all procedures in schema sandbox_db.public to role git_demo_admin;
grant read, write on git repository sandbox_db.public.git_sample to role git_demo_admin;