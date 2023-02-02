#!/bin/sh

sysbench fileio --file-total-size=3G prepare
sysbench fileio --file-total-size=3G --file-test-mode=seqrd --time=40 --threads=4 run
sysbench fileio cleanup