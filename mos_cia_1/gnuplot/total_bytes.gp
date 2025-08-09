set terminal png size 600,400
set output 'plots/total_bytes.png'
set title 'Total Bytes Transferred'
set style data histograms
set style fill solid
plot 'data/total_bytes.dat' using 1:xtic(1) title 'Bytes'
