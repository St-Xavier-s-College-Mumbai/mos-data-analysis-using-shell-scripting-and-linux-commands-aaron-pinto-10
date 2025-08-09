set terminal png size 600,400
set output 'plots/avg_bytes.png'
set title 'Average Bytes per Request'
set style data histograms
set style fill solid
plot 'data/avg_bytes.dat' using 1:xtic(1) title 'Avg Bytes'
