#!/bin/bash




cat /etc/shells | grep '/usr/' > shellhistory.txt

awk 'BEGIN{FS="/"}{print $NF}' shellhistory.txt

