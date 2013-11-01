#!/bin/bash
time ssh -l mssiren ukko192.hpc.cs.helsinki.fi \ "cd /tmp/ && bzcat lost24-monitor-temps-and-fans-v2.tar.bz2" | tar x
