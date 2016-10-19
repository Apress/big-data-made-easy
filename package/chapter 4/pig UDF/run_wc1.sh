#!/bin/bash

# run the pig wc job

./clean_wc.sh

pig  -stop_on_failure  wordcount.pig

