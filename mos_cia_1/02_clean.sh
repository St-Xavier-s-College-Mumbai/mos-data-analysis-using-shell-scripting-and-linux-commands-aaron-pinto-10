#!/bin/bash
# Clean and format apache_logs.txt into CSV

awk '{
    match($0, /\[([^]]+)\]/, date)
    match($0, /"([A-Z]+) ([^ ]+) HTTP/, req)
    print $1 "," date[1] "," req[1] "," req[2] "," $9 "," $10
}' apache_logs.txt > cleaned.csv

# Add headers
sed -i '1iIP,Timestamp,Method,URL,Status,Bytes' cleaned.csv
