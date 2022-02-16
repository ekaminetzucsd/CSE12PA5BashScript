#!/bin/bash

for i in {1..4};
do
	((i=$i*10000))
	for j in A B C;
	do
		for k in add find remove
		do
			echo "Using $i iterations, structure $j, operation $k."
			java -jar ../public/bin/simulator.jar --data-structure $j --size $i --operation $k --iteration 1000 --round 5 | grep "over 5 rounds"
		done
	done
done
