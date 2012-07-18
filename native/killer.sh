#!/bin/bash
# Copyright (c) 2012, 2012 All Rights Reserved, Marek Burza (mkburza@gmail.com)
#
# This script finds a running miner process and kills it.
# This script is called when long-poll invalidates the currently processed job.
kill -INT `ps | grep miner | awk '{print $1}'`
