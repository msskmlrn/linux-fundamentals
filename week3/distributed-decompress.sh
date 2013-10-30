#!/bin/bash
time ssh -l mssiren ukko192.hpc.cs.helsinki.fi \ "cd /tmp/ && bzcat lost24-monitor-temps-and-fans.tar.bz2" | tar x
