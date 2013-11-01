#!/bin/bash
time ssh -l mssiren ukko192.hpc.cs.helsinki.fi \ "cd /tmp/ && curl 'http://wiki.helsinki.fi/download/attachments/124126879/lost24-monitor-temps-and-fans-v2.tar.bz2?version=1&modificationDate=1383226184357&api=v2' \ | bzcat" | tar x
