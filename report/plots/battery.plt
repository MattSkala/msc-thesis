set terminal png
set xlabel 'time (hours)'
set ylabel 'battery level (%)'

plot \
  'battery_0.data' using 1:2 with points title "0 peers" lc "blue",\
  'battery_20.data' using 1:2 with points title "20 peers" lc "purple",\
  'battery_200.data' using 1:2 with points title "200 peers" lc "red",\
  'battery_0.data' using 1:2 smooth mcspline notitle lc "blue",\
  'battery_20.data' using 1:2 smooth mcspline notitle lc "purple",\
  'battery_200.data' using 1:2 smooth mcspline notitle lc "red"
