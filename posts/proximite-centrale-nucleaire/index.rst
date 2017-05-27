.. title: Combien de français vivent à proximité d'une centrale nucléaire ?
.. slug: proximite-centrale-nucleaire
.. date: 2017-03-13 20:17:54 UTC+01:00
.. tags: mathjax
.. category: 
.. link: 
.. description: 
.. type: text

**Faire le choix du nucléaire, c'est aussi accepter le risque d'un accident dont les conséquences pourraient être désastreuses. Il convient alors de quantifier l'ampleur de ce risque. Par exemple, on peut calculer la population résidant à proximité d'une centrale nucléaire. On trouve ainsi qu'en métropole, près de deux tiers des français vivent à moins de 100 km d'un réacteur.**

.. TEASER_END

L'article qui suit vise simplement à exposer la méthodologie et les résultats d'une très rapide recherche que j'ai menée. Je me suis interrogé sur la quantité de personnes vivant dans des zones "à risque" nucléaires, c'est-à-dire à proximité de centrales nucléaires, et donc susceptibles d'être mises en danger ou déplacées en cas d'incident.

Afin de réaliser ces calculs, j'avais besoin de deux données :

* Carte de population de la France. J'ai trouvée mon bonheur sur `le site de l'insee <https://www.insee.fr/fr/statistiques/2520034>`_ qui propose une base de données carroyées à 200 mètres, ce qui est largement suffisant pour une précision de l'ordre de la dizaine de kilomètres.
* Coordonnées géographiques des centrales en France métropolitaine et non loin de ses frontières. J'ai du les rechercher manuellement avec Google Earth, et des listes de centrales nucléaires en service trouvées sur Wikipedia pour la France (19 centrales) et les pays voisins (Belgique, Suisse, Allemagne, je n'ai pas cherché pour le reste - soit 13 centrales).

Le code (python) est très simple est reproduit en fin d'article. Une archive contenant le script ainsi que les données est disponible ici : https://drive.google.com/open?id=0ByqVpjadKNSddnRNRXphak50SDQ

Les résultats sont les suivants :

.. csv-table:: Population de France métropolitaine résidant dans différentes zones de proximité d'une centrale nucléaire en service. La troisième colonne représente ce qu'il en serait si toutes les centrales nucléaires françaises venaient à fermer.
   :header: "Distance (km)", "Population résidant à moins de cette distance d'une centrale nucléaire", "Population résidant à moins de cette distance d'une centrale nucléaire d'un pays frontalier", "", "Hypothèse homogène"
   :widths: 15, 50, 50, 50, 30

   10,584 741,0,Périmètre PPI nucléaire en France,703 000
   20,2 058 061,0,Zone d’exclusion de Fukushima,2 812 000
   25,3 401 827,0,,4 408 000
   30,4 915 535,0,Zone d’exclusion de Chernobyl,6 346 000
   50,11 955 911,126 013,,"\-"
   75,21 964 697,971 102,,"\-"
   100,39 189 765,2 685 670,,"\-"
   150,54 608 034,8 235 688,,"\-"

Avant de discuter les résultats, je précise que la dernière colonne n'est qu'un calcul fait dans l'hypothèse (fausse) d'une densité de population constante, ou, ce qui conduit au même résultat, dans l'hypothèse plus faible qu'elle est constante et égale à la moyenne de France métropolitaine (118 hab/km²) aux voisinages des 19 centrales françaises. Ce calcul (population :math:`p(r) = \mbox{19}\times\mbox{118}\times \pi r^2`) repose sur l'hypothèse que les voisinages ne s'intersectent pas et donc n'est valide que pour :math:`r <` 32 km (distance entre deux centrales la plus petite en France).

Les chiffres parlant d'eux-mêmes, je me bornerai à quelques deux remarques :

* Le périmètre PPI pour le risque nucléaire [#]_ (Périmètre des Plans Particuliers d'Interventions) était jusqu'à récemment de 10 km mais doit être étendu à 20 km [#]_. Parmi les mesures en place dans ce périmètre, est la distribution préventive de comprimés d'iode à toutes les personnes y résidant. On remarque que sa taille est inférieure à celle des zones d'exclusion mises en place autour de Fukushima et Tchernobyl.
* Puisque l'hypothèse simpliste homogène donne des résultats relativement similaires aux résultats exacts, on peut conclure que la densité de population autour des centrales nucléaires n'est pas vraiment plus basse que la moyenne.

Le script de calcul :

.. code:: python

  # Auteur: Lucas Gautheron
  # Données population : https://www.insee.fr/fr/statistiques/2520034

  import sys
  import re
  from lxml import etree
  import dbf
  from pyproj import Proj, transform
  from geopy.distance import vincenty, great_circle

  inCoords = Proj(proj='latlong',datum='WGS84')
  outCoords = Proj(init='epsg:3035')

  thresholds = [ 10, 20, 25, 30, 50, 75, 100, 150, 200, 100000 ]
  populations = {}

  for t in thresholds:
      populations[t] = 0

  def distance(a, b):
      return great_circle(a,b)

  #import reverse_geocoder as rg

  def parse_plants():
      plants = []
      
      tree = etree.parse("plants.xml")
      for coordinates in tree.xpath("//coordinates" if int(sys.argv[1]) == 0 else "//coordinates[not(@french='1')]"):
          m = re.search('((?<![a-zA-Z:])[-+]?\d*\.?\d+),((?<![a-zA-Z:])[-+]?\d*\.?\d+)?,0', coordinates.text)
          lat = float(m.group(2))
          long = float(m.group(1))
          x, y = transform(inCoords,outCoords,lat,long)
          plants.append({'lat': lat, 'long': long, 'x': x, 'y': y})
      return plants

  plants = parse_plants()

  table = dbf.Table("car_m.dbf")
  table.open()
  count = 0

  for rec in table:
      m = re.search('CRS3035RES200mN(-?[0-9]+)E(-?[0-9]+)', rec.idinspire)
      x = m.group(2)
      y = m.group(1)
      population = rec.ind_c

      longitude, latitude = transform(outCoords, inCoords, x, y)
      #print (latitude, longitude, rec.id, rec.idinspire, rec.idk, rec.ind_c)

      min_distance = 1e100
      for p in plants:
          d = distance((latitude, longitude), (p['lat'], p['long']))
          if d.kilometers < min_distance:
              min_distance = d.kilometers

      for t in thresholds:
          if min_distance < t:
              populations[t] = populations[t] + population

      count = count + 1
      if count % 10000 == 0:
          print (count)

  print(populations)


.. [#] : https://www.data.gouv.fr/fr/datasets/perimetre-des-plans-particuliers-dintervention-ppi-approuves-dans-les-bouches-du-rhone/
.. [#] : http://www.maire-info.com/risques/confirmation-de-lextension-des-ppi-nucleaires-de-10-20-km-article-20017
