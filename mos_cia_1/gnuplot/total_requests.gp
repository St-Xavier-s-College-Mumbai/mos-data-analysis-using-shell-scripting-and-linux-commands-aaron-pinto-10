set terminal png size 600,400
set output 'plots/total_requests.png'
set title 'Total Requests'
set style data histograms
set style fill solid
plot 'data/total_requests.dat' using 1:xtic(1) title 'Requests'
