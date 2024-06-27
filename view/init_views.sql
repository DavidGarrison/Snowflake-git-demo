create or replace view git_demo.demo_view
as
select
    value,
    count(*) as num_records,
    max(created_at) as most_recent
from git_demo.demo_table
group by value;