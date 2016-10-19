#!/bin/bash

# run the pig wc 2 job

./clean_wc.sh

pig  -stop_on_failure  wordcount2.pig

