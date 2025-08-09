set terminal png size 600,400
set output 'plots/unique_ips.png'
set title 'Unique IPs'
set style data histograms
set style fill solid
plot 'data/unique_ips.dat' using 1:xtic(1) title 'Unique IPs'
