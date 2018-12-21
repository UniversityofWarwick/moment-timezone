#!/bin/bash

# Based upon instructions at https://github.com/moment/moment-timezone/blob/develop/contributing.md#compiling-data

rm -rf temp
grunt data-download data-zic
mv temp/zic/latest/Europe/London temp/London
rm -r temp/zic/latest
mkdir -p temp/zic/latest/Europe
mv temp/London temp/zic/latest/Europe/London
grunt data-zdump data-collect data-dedupe data-pack data-meta build uglify
rm -r temp