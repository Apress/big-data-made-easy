#!/bin/bash

# Now run the Perl based word count

cd $HADOOP_PREFIX

hadoop jar contrib/streaming/hadoop-*streaming*.jar \
   -file    /home/hadoop/perl/mapper.pl    \
   -mapper  /home/hadoop/perl/mapper.pl \
   -file    /home/hadoop/perl/reducer.pl   \
   -reducer /home/hadoop/perl/reducer.pl \
   -input   /user/hadoop/edgar/* \
   -output  /user/hadoop/perl/results_wc

