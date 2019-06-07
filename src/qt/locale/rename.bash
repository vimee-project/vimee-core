#!/bin/bash

echo "Enter directory to run in: "
read dir
echo "Enter new name of coin: "
read name

namelower="$(echo $name | tr '[A-Z]' '[a-z]')"
nameupper="$(echo $name | tr '[a-z]' '[A-Z]')"
nameupperf="$(echo ${name:0:1} | tr '[a-z]' '[A-Z]')${name:1}"

cd $dir

grep -rl "vimee" . | xargs sed -i "s/vimee/$namelower/g"
grep -rl "Vimee" . | xargs sed -i "s/Vimee/$nameupperf/g"
grep -rl "VIMEE" . | xargs sed -i "s/VIMEE/$nameupper/g"
