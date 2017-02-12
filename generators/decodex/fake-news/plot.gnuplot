set term svg enhanced dynamic dashed font 'DejaVuSerif,14' size 640, 480;
set out '../../../files/decodex/fake-news.svg'

set title 'Google Trends pour "fake-news"'
set timefmt '%Y-%m-%d'
set xdata time
set xtics 8035200
set format x "%d/%m/%Y"

plot 'all' u 1:2 t 'Tous pays' w l, 'france' u 1:2 t 'France' w l, 'brexit' u 1:2 lc rgb 'black' notitle  w l, 'trump' u 1:2 lc rgb 'black' notitle w l

set out
