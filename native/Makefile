# Copyright (c) 2012, 2012 All Rights Reserved, Marek Burza (mkburza@gmail.com)
#
# This builds the mining portion of the native standalone miner (for testing purposes).
# The communication with a mining pool is done by run.py Python script.
ALL: app

app:
	gcc -O3 miner.c -o miner -DSTANDALONE
