#!/bin/bash
# Inspect apache_logs.txt

echo "➡ Total lines in log file:"
wc -l apache_logs.txt

echo -e "\n➡ First 5 lines:"
head -n 5 apache_logs.txt

echo -e "\n➡ Unique IP addresses:"
awk '{print $1}' apache_logs.txt | sort | uniq | wc -l

echo -e "\n➡ HTTP Methods:"
grep -oP '"\K[A-Z]+' apache_logs.txt | sort -n | uniq -c

echo -e "\n➡ Response Codes:"
awk '{print $9}' apache_logs.txt | sort -n | uniq -c

echo -e "\n➡ Top 5 requested resources:"
awk '{print $7}' apache_logs.txt | sort | uniq -c | sort -nr | head -5

