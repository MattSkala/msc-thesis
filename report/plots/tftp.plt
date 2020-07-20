set terminal png
set xlabel 'file size (kB)'
set ylabel 'transfer duration (s)'
set y2label 'transfer rate (kB/s)'
set y2tics

plot \
  'tftp.data' using ($1/1000):($2/1000) with points title "transfer duration" lc "blue",\
  'tftp.data' using ($1/1000):($2/1000) smooth mcspline notitle lc "blue",\
  'tftp.data' using ($1/1000):($1/$2) smooth mcspline title "transfer rate" lc "purple"  axes x1y2
