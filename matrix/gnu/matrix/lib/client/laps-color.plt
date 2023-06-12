# Legend
set key at 50,112
# Theoretical curve
P(x) = 1.53**2 * x/(5.67+x)**2 * 1000
plot '/home/denis/CEO2/plp11/gnu/matrix/bin/data/table/ppm.txt'  title 'Theory' with lines linestyle 1