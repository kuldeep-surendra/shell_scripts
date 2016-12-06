#!/bin/sh
for i in 1 2 3 4 5
do
	awk '{print $2}' hello.txt
done
