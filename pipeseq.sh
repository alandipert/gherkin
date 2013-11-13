#!/bin/bash

command="printf 'a\nb\nc\n'"
mkfifo first
mkfifo rest0
(eval "$command" | tee >(head -1 > first) | tail -n +2 > rest0 &)

cat first

mkfifo rest1
(cat rest0 | tee >(head -1 > first) | tail -n +2 > rest1 &)

cat first

mkfifo rest2
(cat rest1 | tee >(head -1 > first) | tail -n +2 > rest2 &)

cat first

mkfifo rest3
(cat rest2 | tee >(head -1 > first) | tail -n +2 > rest3 &)
