#!/bin/bash
ls -R ~tkt_cam/public_html/2011/$(date +%m)/ | grep "\.jpg$" | wc -l
