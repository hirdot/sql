-- バージョンの確認
SELECT version();

-- -------------------------------------- --
--  global vars
-- -------------------------------------- --

-- global 変数
-- - 設定はサーバで行うこと
set global general_log=on;
set global general_log=off;
set global general_log_file = '/var/log/mysql/query.log';
set global log_output='TABLE';
set global system_time_zone;

-- - コネクション数、タイムアウト
set global max_connections=300;
set wait_timeout=3600;
set interactive_timeout=3600;

show status like '%time%'

-- - 表示は可能
show global variables like '%sleep%';
show global variables like '%error%';
show global variables like '%connection%';
show global variables like '%time%';
show global variables like '%output%';
show global variables like '%log%';
show global variables like '%general%';
show global variables like '%char%';
show global variables like '%connections%';
show global variables like '%_timeout%';
show global variables where Variable_name like '%query%'
show global variables where Variable_name like '%slow%'
show global variables where Variable_name like '%time_zone%'


set global character_set_client = utf8;
set global character_set_connection = utf8;
set global character_set_database = utf8;
set global character_set_results = utf8;
set global character_set_server = utf8;
