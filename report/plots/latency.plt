set terminal png
set xlabel 'peers'
set ylabel 'messages per minute'
set y2label 'latency (ms)'
set y2tics

plot \
  'latency.data' using 1:2 with yerrorbars title "messages per minute",\
  'latency.data' using 1:2 smooth mcspline notitle lc "purple",\
  'latency.data' using 1:3 with yerrorbars title "latency" axes x1y2
