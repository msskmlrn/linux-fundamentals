#!/bin/bash
find ~tkt_cam/public_html/$(date +%Y)/$(date +%m) | grep "\.jpg$" | wc -l
