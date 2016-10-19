#!/bin/bash

# List the results directory 

hadoop dfs -ls /user/hadoop/perl/results_wc

# Cat the first ten lines of the part file

 # hadoop dfs -cat /user/hadoop/perl/results_wc/part-00000 | head -10 
hadoop dfs -cat /user/hadoop/perl/results_wc/part-00000 | tail -10 

