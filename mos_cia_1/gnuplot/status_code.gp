set terminal png size 800,600
set output 'plots/status_codes.png'
set title 'HTTP Status Codes'
set xlabel 'Code'
set ylabel 'Count'
set style data histograms
set style fill solid
plot 'data/status_codes.dat' using 1:xtic(2) title 'Codes'
