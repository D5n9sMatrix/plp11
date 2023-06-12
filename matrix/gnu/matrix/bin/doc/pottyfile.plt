#!/usr/bin/gnuplot -persist
# Set linestyle 1 to blue (#0060ad)
set style line 1 \
    linecolor rgb '#0060ad' \
    linetype 1 linewidth 2 \
    pointtype 7 pointsize 1.5

plot '/home/denis/CEO2/plp11/gnu/matrix/bin/data/table/ppm19.txt' with linespoints linestyle 1