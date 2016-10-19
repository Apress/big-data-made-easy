
drop table if exists rawdata2 ;

create external table rawdata2 (
  line string
)
location '/user/hadoop/oozie_wf/fuel/entity/model/' ;

drop table if exists model ;

create table model as
  select 
    distinct split(line,',') 
  from rawdata2 
  where 
    line not like '%=%' ;

