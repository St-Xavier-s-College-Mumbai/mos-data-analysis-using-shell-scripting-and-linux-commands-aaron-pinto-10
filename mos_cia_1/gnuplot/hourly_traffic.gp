set terminal png size 800,600
set output 'plots/hourly_traffic.png'
set title 'Hourly Traffic'
set xlabel 'Hour'
set ylabel 'Requests'
set style data linespoints
plot 'data/hourly_traffic.dat' using 2:1 title 'Requests'
