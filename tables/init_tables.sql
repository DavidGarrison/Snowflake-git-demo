create table if not exists git_demo.demo_table (
    id int autoincrement,
    value string,
    created_at timestamp default current_timestamp()
);