# This gnuplot script plots the vertically averaged distribution of u(x, y)
# It is assumed that the data to be plotted is in a file called
# vertical_distribution.dat which contains one column, y
# The plot is sent to a PNG file called vertically_averaged_plot.png
# To use this file copy it to the directory/folder containing
# vertical_distribution.dat and run the command:
# gnuplot plot_vertical_avg


# Send output to a PNG file
set terminal png  enhanced
# Set the name of the output file
set output "vertically_averaged_plot.png"

# Set ranges and labels for axes
set xrange [0:1000]
set yrange [0:0.25]
set xlabel "x"
set ylabel "vertically averaged distribution"

# Enforce an aspect ratio of 1
set size square

# Set the range of the colour scale
set cbrange [0:1]

# Plot the data
plot "vertical_distribution.dat" with linespoints ls 7 linecolor "blue"

# End of file