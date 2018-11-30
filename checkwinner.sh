#!/usr/bin/env bash
XDG_RUNTIME_DIR=/run/user/1000
/home/alex/node_modules/pageres-cli/cli.js --delay=10 https://2018.spaceappschallenge.org/awards/global-finalists --filename=img

v=$(md5sum img.png)
v=$(echo $v | awk '{print $1;}')
rm img.png
echo $v
if [ "$v" != "a742879ddf017e87c810e03c6420ef51" ]; then
	ssh ajmcvitt@caffeine.csclub.uwaterloo.ca 'echo "Check https://2018.spaceappschallenge.org/awards/global-finalists" | mail -s "GLOBAL STANDINGS PAGE CHANGED" alexander.mcvittie@gmail.com'
else
	echo $(date) >> /home/alex/noresults.txt
	
fi


