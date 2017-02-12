.. title: L'offensive Décodex, et la contre-offensive
.. slug: decodex
.. date: 2017-02-10 01:15:21 UTC+01:00
.. tags: Le Monde, Decodex
.. category: medias
.. link: 
.. description: 
.. type: text

## Acte I : L'offensive décodex

### Le dispositif

Tout commence le premier février de cette année, lorsque l'équipe des décodeurs du Monde lance "Décodex", présenté comme un "outil de vérification de l'information" [(Le Monde, 23/01/2017)](http://www.lemonde.fr/les-decodeurs/article/2017/01/23/le-decodex-un-premier-premier-pas-vers-la-verification-de-masse-de-l-information_5067709_4355770.html). L'enjeu est annoncé :

Le "décodex" consiste donc en un catalogue de sites d'"information", tous affublés d'un label parmi 5 possibilités :

 * Label gris, qui signifie que le site est trop hétérogène pour conclure quand à sa fiabilité. C'est par exemple le cas de réseaux sociaux comme twitter.
 * Label bleu, pour indiquer un site à vocation humoristique, "satirique".
 * Label rouge, pour identifier les sites "diffusant régulièrement de fausses informations ou des articles trompeurs".
 * Label orange, pour désigner les sites "regulièrement imprécis, ne précisant par leurs sources et reprenant des informations sans vérifications".
 * Enfin, en vert, sont labelisés les sites "en principe plutôt fiables".

![code couleurs décodex](/decodex/code_couleurs.png)

L'équipe du Monde met à disposition des utilisateurs plusieurs moyens pour accéder au label d'un site :

 * [Une barre de recherche sur le site du monde](http://www.lemonde.fr/verification/).
 * Des "plugins" (ou "greffons") pour les navigateurs chrome et firefox, qui affichent le code couleur correspondant en haut à droite de chaque page ou onglet que vous êtes en train de lire.
 * Un bot facebook.

En plus du code couleur associé à chaque site recensé, une description rapide du média. Par exemple, dans le cas du site http://lemonde.fr/, bien sûr catalogué en vert, on trouve la description suivante :
> Un quotidien et site Internet d'information généraliste. Le groupe est détenu depuis 2010 par les hommes d'affaires Xavier Niel, Pierre Bergé et Matthieu Pigasse.

Des références sont parfois données pour justifier d'un classement, mais ce n'est pas systématique. C'est le cas par exemple du Daily Mail, récemment déclassé comme source fiable par la communauté de wikipédia FIXME REFERENCE, et labellisé orange sur Décodex (voir [Décodex - DailyMail](/decodex/dailymail.png)).

On peut d'ores et déjà souligner l'importance du dispositif, par les ressources qu'il a mobilisées :

 * La constitution du catalogue, qui suit des discussions dans l'équipe, nécessite un minimum de concertation, et donc de temps.
 * Le développement d'une interface intégrée sur le site du Monde et clairement mise en avant qui nécessite au moins un développeur.
 * Et de même le développement d'interfaces pour les applications tierces Firefox, Chrome et Facebook qui requiert aussi une main d'oeuvre dédiée.

### Les motivations

Alors pourquoi donc un tel dispositif, qui a mobilisé toute une équipe et coûté des centaines d'heures de travail (selon toute vraisemblance) ? Les décodeurs expliquent avoir réalisé qu'après les attentats du 13 novembre 2015 et les fausses informations propagées sur les réseaux à leur sujet, une "désintoxication" au cas par cas était vaine [(Arrêt sur images, 25/01/2017)](http://www.arretsurimages.net/articles/2017-01-25/Comment-le-Decodex-du-Monde-va-labelliser-l-infaux-en-ligne-id9493). Et c'est alors que serait née l'idée du "décodex". Mais cela remonte à un an, et les véritables raisons, celles auxquelles on doit vraiment le décodex, sont liées de l'actualité plus récente. Dans son article d'introduction de son nouvel outil [(Le Monde, 23/01/2017)](http://www.lemonde.fr/les-decodeurs/article/2017/01/23/le-decodex-un-premier-premier-pas-vers-la-verification-de-masse-de-l-information_5067709_4355770.html), les décodeurs désignent, dans une sorte de confusion douteuse, les vrais cataclysmes qui semblent appeler définitevement à un outil centralisé de classement de l'information : "Le Brexit", "les présidentielles américaines"...

En réalité, cette confusion en elle-même est extrêmement éclairante. Que ce soit dans le cas du Brexit, ou des présidentielles américaines, les médias "de référence", d'orientation libérale, atlantiste et pro-européennes en Europe, ou en faveur du libre échange aux États-Unis, avaient un coupable tout désigné : les "fake-news". La thèse est simple : le peuple a mal voté, en méconnaissance de cause, puisqu'aubreuvé de fausses informations, qui ont orienté - ou plutôt désorienté - son choix. Pour le Brexit, l'infantilisation des électeurs a été immédiate, avec rappelons-le un consensus général des médias français pour désigner le résultat de ce référendum comme une erreur et de nous faire croire, micro-trottoirs à l'appui, que dès le lendemain les anglais repentissants regrettaient leur vote [(Acrimed, 12/07/2016)](http://www.acrimed.org/Le-meilleur-du-pire-de-la-couverture-mediatique). Les votants avaient été mal informés, comme s'en plaignait une partie de la presse anglaise, en minorité en faveur de la position du Remain [(The Huffington Post, 21/06/2016)](http://www.huffingtonpost.co.uk/entry/which-newspapers-support-brexit_uk_5768fad2e4b0a4f99adc6525).

Quelques semaines après le brexit, Katherine Viner enfile son armure de chevalier de l'information et pourfend le mal des "fake news" (le terme est introduit), et suggère que la politique est entrée, à cause des fausses informations propagées par les réseaux sociaux, dans l'ère du "post-factuel" [(Katharine Viner, The Guardian, 12/07/2016)](https://www.theguardian.com/media/2016/jul/12/how-technology-disrupted-the-truth). 

L'élément déterminant sera, me semble-t-il, l'élection de Donald Trump le 8 novembre 2016. La goutte qui fait déborder le vase. en quelque sorte. Et ce, d'autant plus que contrairement au Brexit, qui était sincèrement craint puisque les sondages n'étaient pas concluants sur l'issue probablement du référendum, la présidentielle américaine devait être pliée, Clinton devait gagner haut la main : la presse - du moins, sa majorité - était unanime. Et pourtant... 

Après la victoire de Donald Trump, fleurissent les attaques de la presse contre les "fake-news", presque désignées responsables de la défaite d'Hillary Clinton - qui, avec ses 1,2 milliard de dollars de frais de campagne, soit le double du budget de celle de son concurrent, n'avait aucun moyen de propagande pour se défendre, bien évidemment. Un exemple aussi ridicule qu'emblématique du phénomène est l'affaire du [pizzagate](https://en.wikipedia.org/wiki/Pizzagate_conspiracy_theory), une théorie conspirationniste accusant des membres du parti démocrate de pratiquer des actes de pédophilie dans l'arrière boutique d'une pizzeria.

C'est ainsi qu'est né le néologisme de "fake-news". Les fausses informations, le bourrage de crâne, sont-ils une réalité nouvelle ? Bien sûr que non. La vraie nouveauté, cachée derrière ce nouveau mot pour un concept vieux comme le monde de l'information, c'est que les médias généraux ont perdu le monopole du bourrage du crâne. Malgré cela, ce mot composé a pris un sens intrinsèque, créé de toute pièce par la presse mondialiste. Ce qui est vraiment nouveau avec les "fake news", en fait, c'est son association évidente avec des événements spécifiques. Comme le montre d'ailleurs l'explosion des recherches google pour "fake news" au lendemain du 8 novembre, et ce même en France ou l'anglicisme n'a que peu été traduit :

!["fake-news" et Google Trends](/decodex/fake-news.svg)

Alors, sommes nous donc entré dans une ère de la "politique post-vérité", feignent de se demander ces journalistes unanimes - impliquant encore une fois, que jusqu'à présent jamais le pouvoir politique ne s'était appuyé sur le mensonge ? À cette question, Frédéric Lordon a répondu très justement [(Le Monde Diplomatique, 22/11/2016)](http://blog.mondediplo.net/2016-11-22-Politique-post-verite-ou-journalisme-post). Au concept de politique post-vérité, lui oppose celui de "journalisme post-politique" : soucieux de n'admettre aucune alternative au libéralisme mondialisée, la plupart de la presse a refusé les expressions politiques discordantes. Finalement, il ne resterait qu'à discuter des modalités de la mondialisation, et de la sauce à laquelle les néolibéraux vont nous manger. Et devant l'échec de ces politiques récentes - rappelons que l'espérance de vie aux États-Unis a baissé l'année dernière [(BBC News, 8/12/2016)](http://www.bbc.com/news/world-us-canada-38247385), dévoilant une certaine crise ayant sans doute pesé davantage dans la balance de l'élection présidentielle que les fake-news -, puisque l'alternative était rendue illisible et invisible dans les médias, le peuple s'est réfugié dans une contestation frontale et totale au "système", quitte à soutenir un candidat par ailleurs xénophobe ou misogyne. L'accusation des "fake-news" n'est alors qu'une fuite de ces journalistes, un moyen de se dédouaner des conséquences de leur accaparemment de la parole politique - et du refus du débat.

## Acte II : La contre-offensive





http://www.arretsurimages.net/articles/2017-01-25/Comment-le-Decodex-du-Monde-va-labelliser-l-infaux-en-ligne-id9493