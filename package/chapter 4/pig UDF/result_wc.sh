#!/bin/bash

# remove the pig script results directory

hadoop dfs -ls /user/hadoop/pig/wc_result1

echo "\n\n"

hadoop dfs -cat /user/hadoop/pig/wc_result1/part-r-00000 | tail -10
