#!/bin/bash
mkdir -p data

# Insight 1 – Total requests (single value)
tail -n +2 cleaned.csv | wc -l > data/total_requests.dat

# Insight 2 – Unique IPs
cut -d',' -f1 cleaned.csv | tail -n +2 | sort | uniq | wc -l > data/unique_ips.dat

# Insight 3 – Top 10 IPs
cut -d',' -f1 cleaned.csv | tail -n +2 | sort | uniq -c | sort -nr | head -10 > data/top_ips.dat

# Insight 4 – HTTP Methods
cut -d',' -f3 cleaned.csv | tail -n +2 | sort | uniq -c | sort -nr > data/http_methods.dat

# Insight 5 – Top 10 URLs
cut -d',' -f4 cleaned.csv | tail -n +2 | sort | uniq -c | sort -nr | head -10 > data/top_urls.dat

# Insight 6 – Status codes
cut -d',' -f5 cleaned.csv | tail -n +2 | grep -E '^[1-5][0-9][0-9]$' | sort | uniq -c | sort -nr > data/status_codes.dat

# Insight 7 – Hourly traffic
cut -d',' -f2 cleaned.csv | tail -n +2 | cut -d: -f2 | sort | uniq -c > data/hourly_traffic.dat

# Insight 8 – Total bytes
cut -d',' -f6 cleaned.csv | tail -n +2 | awk '{sum+=$1} END {print sum}' > data/total_bytes.dat

# Insight 9 – Average bytes
cut -d',' -f6 cleaned.csv | tail -n +2 | awk '{sum+=$1} END {print sum/NR}' > data/avg_bytes.dat

# Insight 10 – Top 5 largest requests (IP, URL, bytes)
tail -n +2 cleaned.csv | sort -t',' -k6 -nr | head -5 | awk -F',' '{print $1, $4, $6}' > data/top_large_requests.dat
