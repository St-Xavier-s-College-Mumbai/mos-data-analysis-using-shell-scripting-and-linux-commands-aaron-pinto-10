#!/bin/bash
# Extract meaningful insights from cleaned.csv

echo "1. Total requests:"
tail -n +2 cleaned.csv | wc -l

echo -e "\n2. Unique IPs:"
cut -d',' -f1 cleaned.csv | tail -n +2 | sort | uniq | wc -l

echo -e "\n3. Top 10 IPs:"
cut -d',' -f1 cleaned.csv | tail -n +2 | sort | uniq -c | sort -nr | head -10

echo -e "\n4. HTTP Methods used:"
cut -d',' -f3 cleaned.csv | tail -n +2 | sort | uniq -c

echo -e "\n5. Top 10 requested URLs:"
cut -d',' -f4 cleaned.csv | tail -n +2 | sort | uniq -c | sort -nr | head -10

echo -e "\n6. Status code distribution:"
tail -n +2 cleaned.csv | cut -d',' -f5 | grep -E '^[1-5][0-9][0-9]$' | sort | uniq -c

echo -e "\n7. Hourly traffic breakdown:"
cut -d',' -f2 cleaned.csv | tail -n +2 | cut -d: -f2 | sort | uniq -c

echo -e "\n8. Total bytes transferred:"
cut -d',' -f6 cleaned.csv | tail -n +2 | awk '{sum += $1} END {print sum}'

echo -e "\n9. Average bytes per request:"
cut -d',' -f6 cleaned.csv | tail -n +2 | awk '{sum += $1} END {print sum/NR}'

echo -e "\n10. Top 5 largest requests:"
tail -n +2 cleaned.csv | sort -t',' -k6 -nr | head -5
