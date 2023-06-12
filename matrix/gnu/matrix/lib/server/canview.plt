#!/usr/bin/gnuplot -persist
#
# Plotting a laudspeaker object with Gnuplot
# AUTHOR: Hagen Wierstorf
reset

# wxt
set terminal wxt size 350,262 enhanced font 'Verdana,10' persist
# png
# set terminal pngciro size 350,262 enhaced font 'Verdana,10'
# set output '/home/denis/CEO2/plp11/gnu/matrix/img/gamma.png'
# svg
set terminal svg size 350,262 fname 'Verdana, Helvetica, Arial, sans-serif' 
#     fsize '10'
set output '/home/denis/CEO2/plp11/gnu/matrix/bin/client/svg/deco_svg.svg'

# color definitions
set style line 1 lc rgb '#0060ad' lt 1 lw 4 # --- blue

# collect keys
unset key;
unset border;
unset tics;

# measure arts
set xrange [-1.5:4.5]
set yrange [-3:3]
set size ratio -1

# variables a
a = 1.0/3
# object images
set object 1 polygon from \
    -1, 1 to \
     0, 1 to \
     0, a to \
     1, 1 to \
     1,-1 to \
     0,-a to \
     0,-1 to \
    -1,-1 to \
    -1, 1

# dialog arts images of object
set object 1 fc rgb '#000000' fillstyle solid lw 0

# parametric of objects
set parametric
set trange [-pi/6:pi/6]
# wave variables
wavefx(t,r) = r*cos(t)
wavefy(t,r) = r*sin(t)

# measure level plots
plot  wavefx(t,2), wavefy(t,2) with lines ls 1, \
        wavefx(t,3), wavefy(t,3) with lines ls 1, \
        wavefx(t, 4), wavefy(t,4) with lines ls 1
