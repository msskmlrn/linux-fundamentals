#!/bin/bash
time ssh -l mssiren ukko192.hpc.cs.helsinki.fi \ "cd /tmp/ && curl 'https://wiki.helsinki.fi/download/attachments/94589432/lost24-monitor-temps-and-fans.tar.bz2?version=1&modificationDate=1352366321231&api=v2' \ | bzcat" | tar x
