set terminal png size 1000,600
set output 'plots/top_large_requests.png'
set title 'Top 5 Largest Requests'
set xlabel 'Request'
set ylabel 'Bytes'
set style data histograms
set style fill solid
set xtics rotate by -45
plot 'data/top_large_requests.dat' using 3:xtic(2) title 'Bytes'
