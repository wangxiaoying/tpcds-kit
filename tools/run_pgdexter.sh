#!/bin/bash

# Follow the instruction to download dexter: https://github.com/ankane/dexter
# NOTE: May first need to: `ALTER DATABASE dbname SET hypopg.use_real_oids = on;`

conn=$1
query_file=$2
run=$3

for i in `seq 1 ${run}`; do
  dexter ${conn} ${query_file} --input-format sql --create
done
