# *Analysis*

## Identité et lien avec [HYDRA][]

Tout d'abord, le nom de l'utilisateur est celui d'un personnage fictif de Marvel, lié à [HYDRA][]. Cette dernière est une organisation terroriste de fiction, du même univers. Pour plus d'informations : <https://en.wikipedia.org/wiki/Werner_von_Strucker>.

Dans les contacts mail de l'incriminé, on retrouve `therealredskull41@gmail.com`. [Red Skull](https://en.wikipedia.org/wiki/Red_Skull) est un personnage fictif du même univers que Werner von Strucker.

Dans les photographies, nous avons retrouvé un logo d'[HYDRA][], en figure \ref{fig:hydra}, qui a été prise à l'Université de Lausanne, le 8 avril 2021.

On peut en déduire que Werner a potentiellement rejoint l'organisation en étant approché à l'Université, qu'il y ait été étudiant ou professeur.

Les messages décodés (voir \ref{messages-dec}) vont aussi en ce sens : le *Heil Hydra \emoji{octopus}!* semble avoir été envoyé lorsqu'il a rejoint l'organisation.

Par ailleurs, le fait que les messages ait été échangés via [OmniNotes][] montre la volonté de dissimuler sa relation avec [HYDRA][].

## Voyage à Genève

La conversation du 15 avril 2021 montre qu'il se rendait à Genève pour rencontrer l'organisation.

On voit sur la figure \ref{fig:icc} qu'il se trouvait près d'[ICC][] le 15 avril 2021.

On remarque qu'[ICC][] est situé à proximité du consulat de Turquie.

![Localisation du Consulat de Turquie à Genève](figures/icc-turquie.png){height=175px}

Cela fait donc sens avec les messages : Werner s'est rendu à Genève pour rencontrer [HYDRA][], peut-être dans un bureau d'[ICC][], comme on a remarqué précédemment (voir \ref{localisation}).


## Implication dans le Skimming

<!--Les adresses BCH sont vraisembla-->

Donc notre suspect se trouvait bien en possession d'un enregistrement audio cachant des informations bancaires, sans doute volées et ceci constitue un délit.


L'examen des données a mis en évidence plusieurs éléments reliant Werner von Strucker à des activités de skimming :

- Transactions en Bitcoin Cash : les adresses BCH retrouvées (figure 2.14) révèlent un schéma de transferts multiples entre différentes adresses créées et utilisées le 18 avril 2021. Ce mode d'opération correspond à une tentative claire d'obfuscation visant à masquer la provenance et la destination réelle des fonds. Ce type de fragmentation et de réinjection est fréquemment observé dans les réseaux de fraude bancaire.

- Audio de skimming : le fichier `2021_04_09T1621` contient une piste correspondant aux enregistrements typiques d'un audioskim. L'analyse avec [Magstripper][] puis le décodage manuel de la Track 2 ont permis d'identifier un numéro de carte valide (4099 7939 7756 2804). Cela confirme que l'appareil détenu par Werner contenait bien des données issues d'un dispositif de skimming installé sur un ATM.

- Corrélation temporelle : la date de l'enregistrement (9 avril 2021) coïncide avec la découverte d'un skimmer sur un distributeur de la Poste suisse à Lausanne (voir Identification). Cette concordance renforce la responsabilité du suspect.

- Tentative d'utilisation : enfin, Werner a été arrêté avec un billet d'avion Genève–New York acheté via une carte bancaire volée. Cet élément complète la chaîne probatoire reliant la possession des données frauduleuses à leur usage concret.

En conclusion, les preuves matérielles (transactions crypto, audio de piste magnétique, billet d'avion) établissent l'implication directe de Werner von Strucker dans un réseau organisé de fraude bancaire par skimming, en lien avec HYDRA.
