set terminal png size 1000,600
set output 'plots/top_urls.png'
set title 'Top 10 URLs Requested'
set xlabel 'URL'
set ylabel 'Hits'
set style data histograms
set style fill solid
set xtics rotate by -45
plot 'data/top_urls.dat' using 1:xtic(2) title 'URL Hits'
