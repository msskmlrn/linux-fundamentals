# Example: http://gnuplot.sourceforge.net/demo/timedat.html
# {/Symbol \260} is the degree symbol
set ylabel 'Temperature ({/Symbol \260}C)'
set xlabel "Time (dd.mm)"
set timefmt "%Y.%m.%d %H:%M"
set format x "%d.%m."
set xdata time
set key left
set terminal postscript eps colour enhanced
set output "min-max-daily-temps.eps"
set title "Daily minimum and maximum temperatures of processor zone on host lost24"
plot "min-daily-temps.tsv" using 1:3 title 'CPU #1 Min' with linespoints, "max-daily-temps.tsv" using 1:3 title 'CPU #1 Max' with linespoints
