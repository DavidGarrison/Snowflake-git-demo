create schema if not exists git_demo with managed access;

EXECUTE IMMEDIATE FROM './tables/init_tables.sql';
EXECUTE IMMEDIATE FROM './view/init_views.sql';
EXECUTE IMMEDIATE FROM './data/load_demo_table.sql';
EXECUTE IMMEDIATE FROM './grants/init_schema_grants.sql';
