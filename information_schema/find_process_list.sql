-- -------------------------------------- --
--  sleep connections, lock connections
-- -------------------------------------- --
select p.*
from information_schema.processlist p
# where time >= 1000
order by time desc, host
;


-- 削除していいコネクション
select  p.*
from information_schema.processlist p 
where command = 'sleep' 
and time >= 1000
;

-- - sleep クライアントIPのリスト
select distinct left(host, 16) 
from information_schema.processlist where command = 'sleep'
;

-- - sleep 500秒単位グループで、接続数
select floor(time / 500) as t, count(host)
from information_schema.processlist where command = 'sleep' group by  t
;
