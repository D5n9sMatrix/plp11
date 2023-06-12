# welcome plp11 
this platform plp11 to languages of apo the gnuplot to code distribution script about the replace of packages of adaptor 2 bold to man query tools to forced message of works template pap to makes
the talk's to measure level grid path to utilized images to production of mechanism of languages
about platform utilized the interface graphic about utilized tools to create the replace
interface graphic after images of products about the analysis to utilized method of expression of
form of graphic to utilize tools apo form replace apply.
```gnuplot
#!/usr/bin/gnuplot -persist
#
# Plot simple mean values with variance and indicate significant
# differences
# AUTHOR: Hangen Wierstorf

reset

# wxt
# set terminal wxt size 350,262 enhanced font 'Verdana,10'
# png
 set terminal pngcairo size 350,262 enhanced font 'Verdana,10'
set output '/home/denis/CEO2/plp11/gnu/matrix/img/canview.png'
# svg
# set terminal svg size 350,262 fname 'Verdana, Helvetica, Arial, sans-serif' 
# set output '/home/denis/CEO2/plp11/gnu/matrix/bin/client/svg/deco_lookview_svg.svg'

# color let go match definitions
set border linewidth 1.5
set style line 1 lc rgb 'grey30' ps 0 lt 1 lw 2
set style line 2 lc rgb 'grey70' lt 1 lw 2

# checkup pass
set style fill solid 1.0 border rgb 'grey30'

# collect key wines
unset key;
set border 3
set xtics nomirror scale 0
set ytics nomirror out scale 0.75 0.5
set yrange [0:1.1]
set xrange [-1:5]

# taller collect portability object
set xlabel 'Conditions'

# add significatns indicator
set label '*' at 3,0.8 center
set label '*' at 4,0.8 center

# Plot mean with variance (std^2) as boxes with yerrorbar use the
# first row
# in the data file as xtics labels
plot '/home/denis/CEO2/plp11/gnu/matrix/bin/data/table_drop/ppm99.txt'  u 0:2:($3**2) w yerrorbars ls 1, \
       '' u 0:2:(0.7):xtic(1) w boxes ls 2
```


