-- thread 単位のtimeout 値
select
  vbt.*
from
  performance_schema.variables_by_thread vbt
left join
  performance_schema.threads t on (t.THREAD_ID = vbt.THREAD_ID)
left join
  information_schema.processlist p on (p.id = t.PROCESSLIST_ID)
where
  variable_name like '%_timeout'
and
  VARIABLE_VALUE > 3600
;

