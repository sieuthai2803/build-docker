#!/bin/sh
execute_dir="/usr/local/jar"
java -version
for entry in "$execute_dir"/*.jar
do
  echo "$entry"
#   java -jar $entry.jar
done
# catalina start