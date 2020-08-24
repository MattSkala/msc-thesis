set terminal png
set xlabel 'file size (kB)'
set ylabel 'transfer rate (kb/s)'

plot \
  'tftp.data' using ($1/1000):($1/$2*8) with points title "transfer rate" lc "purple",\
  'tftp.data' using ($1/1000):($1/$2*8) smooth mcspline notitle lc "purple"
