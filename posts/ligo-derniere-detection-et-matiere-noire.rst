.. title: LIGO, dernière détection et matière noire
.. slug: ligo-derniere-detection-et-matiere-noire
.. date: 2017-06-15 07:08:29 UTC+02:00
.. tags: latex, draft
.. category: 
.. link: 
.. description: 
.. type: text

Il y a quelques jours, la collaboration `LIGO <https://www.ligo.caltech.edu/>`__-`Virgo <http://www.virgo-gw.eu/>`__ a annoncé sa troisième détection d'onde gravitationnelle, survenue le 4 janvier 2017. Comme pour les deux précédentes, il s'agit de l'onde consécutive à la coalescence de deux trous noirs très massifs, de masses respectives :math:`32\substack{+8 \\ -6}` masses solaires ($$M_\odot$$) et:math:`19\substack{+5 \\ -6}` [#]_ [#]_. Cette fusion a donné naissance à un un trou noir unique de masse finale proche de 50 masses solaires. L'événement a été baptisé *GW170104*, conformément à la nomenclature standard : "GW" pour "gravitational wave" suivie de la date de détection, un peu à la façon des supernovae (e.g. SN1987A).
Je vais rester très bref dans cet article, qui vise principalement à partager cette actualité. Je reviendrai plus en détail sur l'analyse à l'origine de ce résultat dans un autre billet.

Je vous propose de revenir sur les moyens mis en place pour détecter ces ondes, des instruments à l'analyse de leur mesures.


Relativité générale et ondes gravitationnelles
==============================================

.. math::

   G = T

Cette équation se lit de la façon suivante :

  La déformation de l'espace-temps (notée **G**), donc de la "grille" sur laquelle sont repérés les objets - emplacement d'une particule à une certaine date par exemple), est égale au contenu en énergie (ou en masse, de façon équivalente, puisque E = mc²) au même endroit (noté **T**).

Concrètement, une déformation peut correspondre, par exemple, à une élongation ou une contraction de l'espace dans une certaine direction (un peu à l'image d'un élastique). Or, il se peut - c'est une solution de l'équation d'Einstein loin d'une source d'énergie - qu'une telle déformation se transmette de proche en proche et de façon quasi-périodique. On note cette perturbation $$h$$. Pour une onde gravitationnelle émise par un phénomène comme celui observé le 4 janvier, $$h$$ vaut typiquement $$$10^{-21}$$. C'est-à-dire qu'un objet d'un mètre est contracté/dilaté de $$10^{-21}$$ mètre lors du passage de l'onde gravitationnel. Mesurer une telle variation de longueur est donc un défi considérable.

La solution : le détecteur interférométrique
============================================

En physique, on sait mesurer de petites longueurs depuis un certain temps, avec ce qu'on appelle un interféromètre de Michelson. C'est un appareil relativement simple.




Pour l'instant, la rareté des événements ne permet pas d'appliquer ces détections à la Cosmologie. Pour cela, il faudrait par exemple parvenir à reconstituer la relation entre `distance de luminosité <https://cosmology.education/decouverte-acceleration-expansion/distance-luminosite/>`__ $$d_L$$ et redshift $$z$$ (leur vitesse d'éloignementdue à l'expansion) comme pour les supernovae de type Ia. C'est en fait par cette méthode que l'on a découvert `l'accélération de l'expansion de l'Univers <https://cosmology.education/decouverte-acceleration-expansion/#!>`__. Une autre exploitation possible en Cosmologie serait de reconstruire la distribution du nombre d'événements observés en fonction du redshift. Les objets de redshift élevés étant plus éloignés, cela permettrait d'estimer la population de l'Univers en objets compacts ainsi que leur nature au cours de son évolution.

.. [#] `GW170104: Observation of a 50-Solar-Mass Binary Black Hole Coalescence at Redshift 0.2 <https://arxiv.org/abs/1706.01812>`__.
.. [#] Les "marges d'erreur" indiquées correspondent à l'intervalle de confiance à 90 %. Elles sont ici très élevées.
