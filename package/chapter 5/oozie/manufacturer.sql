
drop table if exists rawdata2 ;

create external table rawdata2 (
  line string
)
location '/user/hadoop/oozie_wf/fuel/entity/manufacturer/' ;

drop table if exists manufacturer ;

create table manufacturer as 
  select distinct line from rawdata2 where line not like '%=%'
  and line not like '% % %' ;

