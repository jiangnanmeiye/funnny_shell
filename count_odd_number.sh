#!/usr/bin.env bash
sum=0
for num in 1 2 3 4; do
 re=${num}%2
 if (( ${re} == 1 )); then
   sum=$[${sum} + ${num}]
fi
done
echo ${sum}