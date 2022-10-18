#!/bin/bash .......
TIME_SEGMENT=216
READ_DATA_PERIODICITY=4
SAMPLES_PER_PERIOD=4
PACKAGES=51
FIRST_PACKAGE=0
stps=""
for((i = FIRST_PACKAGE; i <= $PACKAGES; i++)); do
	start=$((i*READ_DATA_PERIODICITY*TIME_SEGMENT))
	stop=$((start+SAMPLES_PER_PERIOD*TIME_SEGMENT))
	stps+="$start:$stop:$TIME_SEGMENT,"
done