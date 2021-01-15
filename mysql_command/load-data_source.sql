-- load data
load data infile '/var/docker-tmp/sql/insert_tap_SQL.sql' into table mydatabase.users fields terminated by ',';

-- exec sql
source /var/docker-tmp/sql/insert_tap_SQL.sql;

