set terminal png size 800,600
set output 'plots/http_methods.png'
set title 'HTTP Methods'
set xlabel 'Method'
set ylabel 'Count'
set style data histograms
set style fill solid
plot 'data/http_methods.dat' using 1:xtic(2) title 'Method Usage'
