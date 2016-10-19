
-- get the raw data from the files from the csv files 

rlines = LOAD '/user/hadoop/oozie_wf/fuel/rawdata/*.csv' USING PigStorage(',') AS 
    ( year:int, manufacturer:chararray, model:chararray, class:chararray, size:float, cylinders:int,
      transmission:chararray, fuel:chararray, cons_cityl100:float, cond_hwyl100:float, cons_citympgs:int,
      cond_hwympgs:int, lyears:int, co2s:int
    );

mlist = FOREACH rlines GENERATE manufacturer; 

dlist = DISTINCT mlist ; 

-- save to a new file

STORE dlist INTO '/user/hadoop/oozie_wf/fuel/entity/manufacturer/' ;
