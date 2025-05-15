#!/bin/bash

input_file=$1

awk '
  /^-- start query/ {
    match($0, /-- start query ([0-9]+)/, m)
    query_num = m[1]
    file = sprintf("q%02d.sql", query_num)  # zero-padded to 2 digits
    next
  }
  /^-- end query/ {
    file = ""
    next
  }
  file != "" {
    print $0 >> file
  }
' "$input_file"

