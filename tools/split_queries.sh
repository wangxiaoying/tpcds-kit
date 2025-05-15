#!/bin/bash
# mkdir output_path && cd output_path && bash ../split_queries.sh ../generated_file.sql
# NOTE: the logic for fixing query 36, 70, 86 can be referred to https://github.com/celuk/tpcds-postgres/blob/main/split_sqls.py

input_file=$1

awk '
  function fix_days(line) {
    while (match(line, /([+-])[ \t]*([0-9]+)[ \t]+days/, m)) {
      op = m[1]
      num = m[2] + 0
      prefix = substr(line, 1, RSTART - 1)
      suffix = substr(line, RSTART + RLENGTH)
      line = prefix op " interval \047" num " days\047" suffix
    }
    return line
  }

  function wrap_outer_select_orderby(text,  pos, pre, post) {
    # Replace first "select" (with optional leading/trailing spaces)
    match(text, /[ \t]*select[ \t]+/)
    if (RSTART > 0) {
      pre = substr(text, 1, RSTART - 1)
      post = substr(text, RSTART)
      sub(/^[ \t]*select[ \t]+/, "select * from (select ", post)
      text = pre post
    }

    # Replace last "order by" (with optional leading space and spacing between words)
    pos = 0
    last_pos = 0
    while (match(substr(text, pos + 1), /[ \t]*order[ \t]+by/)) {
      last_pos = pos + RSTART
      pos = pos + RSTART + RLENGTH - 1
    }

    if (last_pos > 0) {
      pre = substr(text, 1, last_pos - 1)
      post = substr(text, last_pos)
      sub(/^[ \t]*order[ \t]+by/, ") as sub\norder by", post)
      text = pre post
    }

    return text
  }

  /^-- start query/ {
    match($0, /-- start query ([0-9]+)/, m)
    query_id = m[1] + 0
    needs_wrap = (query_id == 36 || query_id == 70 || query_id == 86)
    part_code = 97
    buffer = ""
    next
  }

  /^-- end query/ {
    buffer = ""
    next
  }

  {
    line = fix_days($0)
    buffer = buffer line "\n"

    if (line ~ /;\s*$/) {
      if (needs_wrap) {
        buffer = wrap_outer_select_orderby(buffer)
      }
      filename = sprintf("q%02d%s.sql", query_id, sprintf("%c", part_code))
      print buffer > filename
      close(filename)
      part_code++
      buffer = ""
    }
  }
' "$input_file"
