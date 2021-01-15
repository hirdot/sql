-- -------------------------------------- --
--  information_schema ... seeds of meta-coding
-- -------------------------------------- --
-- カラム名からテーブルを検索
select *
from INFORMATION_SCHEMA.COLUMNS
where COLUMN_NAME like 'order_id'
order by TABLE_SCHEMA, TABLE_NAME
;

-- テーブル名からDBを検索
select *
from INFORMATION_SCHEMA.TABLES
where TABLE_NAME like 'writechk_chopin_logs%'
order by TABLE_SCHEMA, TABLE_NAME
;

select *
from INFORMATION_SCHEMA.TABLES
where TABLE_SCHEMA = 'compe'
;


select *
from INFORMATION_SCHEMA.COLUMNS
where TABLE_SCHEMA = 'www'
and column_name like '%dead%'
;

