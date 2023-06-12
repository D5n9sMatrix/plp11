#!/usr/bin/gnuplot -persist
set terminal epslatex font "Ubuntu,13"
set output '/home/denis/CEO2/plp11/gnu/matrix/bin/data/latex/plp11.tex'
x = 50
y = 210

# 1.1
# A busy weekend
# To get a feeling for the kinds of problems you may be dealing with and for the kinds
# of solutions gnuplot can help you find, let’s look at two examples. Both take place dur-
# ing a long, busy weekend.
drop(x) = sin(x)
set xlabel 'x'
set ylabel 'y'
# 1.1.1
# Planning a marathon
# Imagine you’re in charge of organizing the local city marathon. There will be more
# than 2,000 starters, traffic closed around the city, plenty of spectators—and a major
# Finish Line Festival to celebrate the victors. The big question is: when should the Fin-
# ish Line crew be ready to deal with the majority of runners? At what point do you
# expect the big influx of the masses?
Planning(x) = exp(x)
set samples 2000
set xtics 1
set ytics 1
# You have the results from last year’s event. Assuming that the starters haven’t
# improved dramatically over the last year (probably a safe assumption), you do a quick
# average of the completion times and find that last year’s average was 282 minutes. To
# be on the safe side, you calculate the standard deviation as well, which comes out to
# about 50 minutes. So you tell your crew to be ready for the big rush starting three and
# a half hours (210 minutes) after the start, and you feel reasonably well prepared for
# the event.
minutes(x) = sin(x)
times(x) = exp(x)
# The mean is convenient: it’s easy to calculate, and it summarizes the entire data set
# in a single number. But in forming the mean, you lost a lot of information. To under-
# stand the entire data set, you have to look at it. And because you can’t understand data
# by looking at more than 2,000 individual finish times, this means you have to plot it.
# It will be convenient to group the runners by completion time and to count the
# number of participants who finished during each five-minute interval. The resulting
# file might start like this:
set xrange [1.22222e+08:1.24691e+08]
set yrange [1.22222e+08:1.24691e+08]
set samples 2000
set tics 2e+06
# Now you plot the number of runners against the completion time (see figure 1.1). It’s
# immediately obvious where you went wrong: the data is bimodal, meaning it has two peaks.
# There is an early peak at around 180 minutes and a later main peak at 300 minutes.
# Actually, this makes sense: a major sporting event such as a city marathon attracts
# two very different groups of people: athletes, who train and compete throughout the
# year and are in it to win, and a much larger group of amateurs, who come out once a
# year for a big event and are mostly there to participate. The problem is that for such
# data, the mean and standard deviation are obviously bad representations—so much
# so. that at the time when you expected the big rush (200 minutes), there’s a lull at the
# finish line! 
set object ellipse
set style circle
# The take-home message here is that it’s usually not a good idea to rely on summary
# statistics (such as the mean) for unknown data sets. You always should investigate what
# the data looks like. Once you’ve confirmed the basic shape, you can choose how to
# summarize your findings best.
array sum[i=365]
sum[1] = sin(x)
sum[2] = sin(x)
sum[3] = sin(x)
# And of course, there is always more to learn. In this example, for instance, you see
# that after about 400 minutes, almost everybody has made it, and you can start winding
# down the operation. The actual “tail” of the distribution is quite small—surprisingly
# so. (I would’ve expected to see a greater number of stragglers, but possibly many run-
# ners who are really slow drop out of the race when they realize they’ll place badly.)
set samples 4000
set xdata 
tail = 4000
# USING GNUPLOT
# Let’s look at the gnuplot command that was used to generate figure 1.1. Gnuplot is
# command-line oriented: after you start gnuplot, it drops you into an interactive com-
# mand session, and all commands are typed at the interactive gnuplot prompt.
plot drop(x) with lines title "drop x"