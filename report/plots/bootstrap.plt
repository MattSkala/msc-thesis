set terminal png
set xlabel 'time (s)'
set ylabel 'peers'

plot \
  'bootstrap.data' using ($1/1000):2 smooth mcspline notitle
