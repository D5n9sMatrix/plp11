#!/usr/bin/gnuplot -persist
# If you don’t specify a style, gnuplot chooses a different line color or dash pattern for
# each new function in the plot. If you include more functions than there are currently
# defined styles, gnuplot cycles through them again from the beginning. (This is
# explained in more detail in chapters 6 and 9.)
# Gnuplot comes with a large number of built-in functions, and it’s also possible to
# define your own. I’ll talk about this in section 3.2 later in this chapter.
set table "/home/denis/CEO2/plp11/gnu/matrix/bin/data/table/ppm.txt"
set samples 4000
call "/home/denis/CEO2/plp11/gnu/matrix/bin/client/interative.plt"
set style fill solid 0.0 border
y = 365
limit360(x) = x<1?x+360:x
color(x) = x>180?360-x:x
amplitude_scaling = 200
plot for [angle=360:0:-2] '/home/denis/CEO2/plp11/gnu/matrix/bin/data/table/ppm.txt' with lp