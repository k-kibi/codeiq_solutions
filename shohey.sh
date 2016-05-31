#!/bin/bash

: <<'#__CO__'
if [ $# -lt 2 ]; then
  echo "引数は必須です" 1>&2
  exit 1
fi

expr "$2" + 1 > /dev/null 2>&1
if [ $? -ge 2 ]; then
  echo "2番目の引数は1-10の整数を指定してください" 1>&2
  exit 1 
fi

if [ $2 -lt 1 ] || [ $2 -gt 10 ]; then
  echo "1番目の引数は1-10の整数を指定してください" 1>&2
  exit 1
fi
#__CO__

if [ "$3" = "-e" ] || [ "$4" = "-e" ]; then
  N=$(($2 * 2))
else
  N=$2
fi

STR="sho"
for i in `seq 1 ${N}`; do
  STR="${STR}hey"
done

if [ "$3" = "-q" ] || [ "$4" = "-q" ]; then
  STR="${STR}?"
fi

echo $STR
exit 0
