#!/bin/bash
echo "System Triage Report"
echo "Date:"
date
echo "Disk Usage:"
df -h
echo "Logged in users:"
who
echo "Kernel Information:"
uname -a

echo "Recent authentication failures(if auth.log is present):"
grep "Failed password" auth.log | tail -n 10
