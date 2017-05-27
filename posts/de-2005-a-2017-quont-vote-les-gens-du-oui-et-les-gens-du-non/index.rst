.. title: De 2005 à 2017 : qu'ont voté les gens du "oui" et les gens du "non" ?
.. slug: de-2005-a-2017-quont-vote-les-gens-du-oui-et-les-gens-du-non
.. date: 2017-05-27 12:59:49 UTC+02:00
.. tags: Présidentielle 2017, TCE, Référendum 2005, mathjax
.. category: 
.. link: 
.. description: Il y a déjà 12 ans, les Français étaient amenés à se prononcer sur le référendum pour un traité constitutionnel de l'Union Européenne. Le "non" l'avait remporté avec près de 54 % des voix. Après Maastricht, la "France d'en bas" détenait sa revanche sur la "France d'en haut". En 2017, cette opposition est-elle encore pertinente ? Structure-t-elle toujours politiquement la société ?
.. type: text

**Il y a déjà 12 ans, les Français étaient amenés à se prononcer sur le référendum pour un traité constitutionnel de l'Union Européenne. Le "non" l'avait remporté avec près de 54 % des voix. Après Maastricht, la "France d'en bas" détenait sa revanche sur la "France d'en haut". En 2017, cette opposition est-elle encore pertinente ? Structure-t-elle toujours politiquement la société ?**

La méthode : l'inférence écologique
===================================

Pour qui ont voté les gens du "non" et les gens du "oui" au premier tour de la présidentielle ? Pour le savoir, on pourrait réaliser un sondage, mais cette méthode souffre de plusieurs inconvénients. D'abord, son coût : je n'ai pas les moyens de le faire, et à ma connaissance, personne ne l'a fait. Ensuite, elle pâtit des problèmes inhérents à chaque sondage : erreur statistique due à la taille de l'échantillon, biais (non représentativité, personnes qui peuvent mentir, se tromper, etc.). Mais il existe une méthode qui permet d'estimer les "trajectoires de vote" : l'inférence écologique. Celle-ci consiste en fait à utiliser les données sur plusieurs sous-ensembles (ex: des communes) d'un plus grand ensemble (ex: un département) en faisant l'hypothèse que la probabilité de report (probabilité qu'un inscrit ayant voté A (par exemple, non en 2005) à une élection ait voté B (par exemple Fillon en 2017) à une autre, qu'on note mathématiquement :math:`P(B|A)`. En effet, si un défaut (resp. excès) de vote A est associé à un défaut (resp. excès) de vote B, alors les deux sont probablement corrélés et la probabilité :math:`P(B|A)` élevée. L'algorithme employé fait appel à des méthodes statistiques rigoureuses pour tirer partie de cet effet.

J'ai donc compilé les résultats du référendum de 2005 et des deux tours de la présidentielle de 2017 par commune, pour calculer les probabilités de report département par département, et enfin les combiner au niveau national. Avant de donner les résultats, il convient d'avouer les limites de cette méthode :

* Beaucoup de communes ont disparus, ou été l'objet de fusion entre 2005 et 2017. Seules ont été retenues les communes qui existent toujours et qui n'ont pas connu de variation du nombre d'inscrits supérieure à 50 %. Dans certains départements, cela ne laisse que quelques dizaines de communes et les résultats ne sont pas très fiables. Cette sélection est donc aussi un peu biaisée (quelques dizièmes de points d'écart entre sélection et scores nationaux).
* Le renouvellement du corps électoral entre ces deux dates est d'environ 10 %. L'électorat a changé : le nombre de personnes devenues en âge de voter sur cette période atteint près de 4 millions. Un nombre du même ordre de grandeur est décédé. Et il y a eu des transferts migratoires entre communes.
* Pour que la méthode soit précise, il vaut mieux fusionner des options électorales qui n'ont réuni que peu de voix. J'ai donc du intégrer Hamon aux "petits candidats".

Résultats nationaux
====================

Les trajectoires de vote nationales sont données dans le tableau ci-dessous. 

.. figure:: /tce-presidentielle/tableaux.png

La corrélation entre vote au référendum et vote à la présidentielle est plus que flagrante. On remarque notamment que :

* 75 % des "gens du oui" ont voté pour Macron ou Fillon au premier tour.
* 70 % des "nonistes" ont voté pour Mélenchon ou Le Pen au premier tour.
* L'abstention chez les gens du non est près de 4 points plus importante que chez les gens du oui.

(Lecture du tableau : 10,4 % des personnes qui ont voté non en 2005 ont voté Macron au premier tour de la Présidentielle de 2017)Tableau des trajectoires de vote de 2005 à 2017

Le graphe suivant montre ces résultats en nombre de voix et sous forme d'histogrammes pour le premier tour.

.. figure:: /tce-presidentielle/1ertour.png

   1er tour 2017 et référendum de 2005

Au second tour, Macron écrase Le Pen chez les "oui-istes". Elle est assez largement majoritaire chez les nonistes, mais ceux-ci sont plus divisés. Ceux-ci s'abstiennent beaucoup (20 %). Si l'on omet le vote des nonistes, le score de Macron est de 80 %. Si l'on omet les gens du oui, il n'est que de 46 %.

.. figure:: /tce-presidentielle/2ndtour.png

   2nd tour 2017 et référendum de 2005

Bien que ce ne soit pas l'objet principal du billet, vous pouvez voir ci-dessous les reports de voix du premier au second tour, en utilisant la même méthode (pas de sondage donc). Les électeurs de Fillon et Mélenchon se sont massivement reportés vers Macron, malgré l'opposition politique totale entre eux. Le "barrage républicain" a bien fonctionné. Il existe une composante non résiduelle de report vers Le Pen chez les électeurs de Fillon, qui correspond probablement à un vote xénophobe âgé.

.. figure:: /tce-presidentielle/report.png

   Du 1er tour au 2nd tour

 

Résultats par départements
==========================

Il est intéressant de se pencher sur les résultats département par département. Dans chacune des cartes suivantes, chaque intervalle correspond à 2 déciles (20 %) des départements.

 
.. figure:: /tce-presidentielle/eurosceptique.png

   Euroscepticisme (pourcentage d'inscrits ayant voté Mélenchon ou Le Pen en 2017, et non en 2005)

Cette carte ressemble très fortement à celle de la pauvreté :

.. figure:: /tce-presidentielle/pauvrete.png

   Taux de pauvreté

Il est aussi utile d'étudier la façon dont s'est reporté le non en fonction des départements. La carte ci-dessous illustre le report vers Mélenchon. Il est le plus élevé dans le sud et dans l'ouest.

.. figure:: /tce-presidentielle/versjlm.png

   Pourcentage des nonistes ayant voté Mélenchon au 1er tour

Ci-dessous, est représenté le report du non vers Le Pen (1er tour). Il est le plus élevé dans le nord, et le nord-est.

.. figure:: /tce-presidentielle/versmlp.png

   Pourcentage des nonistes ayant voté Le Pen au 1er tour

Europhiles et europhobes, France d'en bas et France d'en haut ?
===============================================================

Il est évident qu'il existe toujours une forte structuration autour du non et du oui : les deux catégories constituent des électorats peu perméables. Le "oui" est représenté essentiellement par Macron et Fillon, et le non par Mélenchon et Le Pen. Cependant, on ne peut scinder la population française entre deux pôles homogène - europhobe et europhile. Certes, le pôle europhile (Macron-Fillon) est relativement homogène et les deux candidats présentent des caractéristiques similaires : ils sont majoritairement soutenus par les plus de 50 ans, et par les plus aisés. D'ailleurs, le report de Sarkozy (2012) vers Macron est très élevé, et la composition du gouvernement Philippe 1er lève bien des hypocrisies : sur le fond (libéralisme intégré à l'Union Européenne), Macron et Fillon sont d'accord, et peuvent parler aux mêmes personnes - à peu près. Pourtant, ce n'est pas le cas du pôle "europhobe" des électorats de Mélenchon et Le Pen. Leurs caractéristiques sont assez différentes. Le premier est transverse dans la société, équilibré à travers les classes socioprofessionnelles, et à travers le niveau d'éducation et de rémunération. Le second, lui, repose sur les moins éduqués, et les plus pauvres. On observe même une véritable scission géographique entre les deux électorats sur les cartes par département. Par ailleurs, le vote Mélenchon est très élevé dans les grandes villes, ce qui ne se voit pas sur ces cartes. Il existe donc, au sein des eurosceptiques, une opposition très forte entre les électeurs de Mélenchon et les électeurs de Le Pen. Il est donc difficile pour un de ces deux partis de prendre le dessus et de représenter ce pôle eurosceptique.

Finalement, donc il y a bien une France d'en haut : c'est celle de Macron et Fillon. Il y a une France d'en bas, écrasée par la première [#]_. Elle se tourne principalement vers le Front National. Toutefois, entre les deux, émerge un électorat hétérogène, mais eurosceptique, opposé au libéralisme, non xénophobe, qui repose en partie sur les classes populaires, et simultanément sur des classes plus protégées qui refusent l'extermination des premières.

Donc, entre la France d'en haut et la France d'en bas, dans cette élection, a émergé, via le vote Mélenchon, une France solidaire, entre les classes populaires qui souffrent de l'euro, et des classes plus favorisées, qui refusent de l'imposer aux premières. L'enjeu désormais, pour la France Insoumise, est de maintenir sa position dominante à gauche pour lui imposer une orientation eurosceptique, ce qui est le renversement majeur de cette élection. Si l'aile gauche du PS et EELV - qui sont eux relativement europhiles - venaient à reprendre le dessus, cela se ferait au détriment du support "intellectuel" du mouvement, qui perdrait sa caractéristique transverse. Sinon, celui-ci peut prétendre, éventuellement, opérer la réconciliation qui permettra de renverser le rapport de force entre le "oui" et le "non", du fait de la division au sein des nonistes.

.. [#] : Les néolibéraux Lamy-istes doivent parier sur la disparition (le remplacement) des classes ouvrières et des employés non qualifiés à activité non délocalisable en France. Puisqu'ils ne peuvent les protéger de la mondialisation, ils espèrent que l'activité se reportera sur des secteurs où la France peut toujours être concurentielle. C'est pourquoi la mesure phare de Macron contre le chômage est un plan de formation (15 milliards d'euros y seraient dédiés).
