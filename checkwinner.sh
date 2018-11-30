#!/usr/bin/env bash

/home/alex/node_modules/pageres-cli/cli.js --delay=10 https://2018.spaceappschallenge.org/awards/global-finalists --filename=img

v=$(md5sum img.png)
v=$(echo $v | awk '{print $1;}')
# rm img.png
echo $v
if [ "$v" != "a742879ddf017e87c810e03c6420ef51" ]; then
	scp img.png ajmcvitt@taurine.csclub.uwaterloo.ca:/users/ajmcvitt/img.png
	ssh ajmcvitt@taurine.csclub.uwaterloo.ca 'echo "Check https://2018.spaceappschallenge.org/awards/global-finalists" | mail -s "GLOBAL STANDINGS PAGE CHANGED" alexander.mcvittie@gmail.com -A /users/ajmcvitt/img.png'
	ssh ajmcvitt@taurine.csclub.uwaterloo.ca 'rm /users/ajmcvitt/img.png'
else
	echo $(date) >> /home/alex/noresults.txt
	
fi
rm img.png


