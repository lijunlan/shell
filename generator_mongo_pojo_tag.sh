#! /bin/bash

awk  '/JSONField\(name/{print $0}' $1 | sed 's/\(@JSONField(name.*\)"\(.*\)"\(.*\)/\2;\2/g' | awk -F ';' '{print toupper($1)";"$2}' | sed 's/^ */String JSON_FIELD_/g' | sed 's/;/ = "/g' | sed 's/$/";/g' | awk '{print $0;print ""}'>> temp

awk  '/Field\(value/{print $0}' $1 | sed 's/\(@Field(value.*\)"\(.*\)"\(.*\)/\2;\2/g' | awk -F ';' '{print toupper($1)";"$2}' | sed 's/^ */String FIELD_/g' | sed 's/;/ = "/g' | sed 's/$/";/g' | awk '{print $0;print ""}' >> temp

echo 'TAGS:'

cat temp

echo '[INFO]  please add FIELD_XXX_ID = _id by yourself'

rm temp
