 set border linewidth 1.5
 set style line 1 linecolor rgb "#0060ad" linetype 1 linewidth 2
 set title "Grafico Sin(x)"
 set xlabel "X"
 set ylabel "sin(x)"
 m="Dados.txt"
 set xrange [0:   14.1371670     ]
 plot sin(x) with lines linestyle 1
