#!/usr/bin/gnuplot -persist
# 3.1
# Plotting functions and data
# You use the plot command to plot both functions and data. Let’s look at plotting
# functions first and then move on to plotting data.
# 3.1.1
# Plotting functions
# To plot a function, you use the plot command followed by the function to plot and
# (optionally) any style directives you wish to use (see chapters 6 and 9 to learn about
# available styles and how to specify them):
set terminal epslatex font "Ubuntu,13"
set output '/home/denis/CEO2/plp11/gnu/matrix/bin/data/latex/plp19.tex'
plot sin(x)
plot cos(x) with linespoints