set terminal png size 800,600
set output 'plots/top_ips.png'
set title 'Top 10 IPs'
set xlabel 'IP'
set ylabel 'Requests'
set style data histograms
set style fill solid

# Improve x-axis label readability
set xtics rotate by -45
set lmargin 10
set rmargin 10
set bmargin 7  # Increase bottom margin to avoid label clipping

plot 'data/top_ips.dat' using 1:xtic(2) title 'Requests'
