---
documentclass: report
title: |
  ![](logo-uqac.eps){height=1in}

  Atelier 1 : Mobile Forensics
subtitle: |
  8INF968 - Atelier pratique en cybersécurité I

  Fehmi Jaafar
author:
- Justin Bossard
- Mattéo Gouhier
- Paul Mathé
- Samuel Plet
date: "3 octobre 2025"
toc: true
numbersections: true
papersize: a4
geometry: margin=2cm
lang: fr-FR
linkcolor: blue
header-includes:
- \addto\captionsfrench{\renewcommand{\chaptername}{Partie}}
---

<!--Lien-->
[Autopsy]: https://www.autopsy.com/
[HYDRA]: https://fr.wikipedia.org/wiki/HYDRA

<!--Notes de pied de page-->
[^1]: Plus de contexte : <https://dfrws.org/dfrws-2021-challenge>


# Introduction{-}

L'objectif de ce premier projet de *Mobile Forensic* est de réaliser une investigation sur une image de smartphone, dans un contexte préétabli ; ce afin de mettre en évidence des preuves numériques pertinentes pour une enquête.

TODO
:   Définir MF et la recevabilité des preuves différement de la source

Digital Forensics
:   Tools and techniques to recover, preserve, and examine digital evidence on or transmitted by digital devices.

Le processus légal d'investigation est souvent le suivant :

1. Identification
   :   Détection de l'incident, reconnaissance et sécurisation des sources de preuves.
2. Collection
   :   Acquisition des données de l'appareil avec des méthodes garantissant l'intégrité (copies, empreintes numériques).
3. Examination
   :   Extraction, tri et préparation des données pertinentes (fichiers, métadonnées, artefacts cachés).
4. Analysis
   :   Interprétation des preuves pour établir les faits, reconstituer les événements et relier les acteurs.
5. Presentation
   :   Restitution structurée des résultats sous forme de rapport recevable juridiquement.

Pour ce travail, les étapes d'*Identification* et de *Collection* ont déjà été effectués, nous allons donc les couvrir dans un premier temps, avant de présenter successivement nos résultats pour *Examination* et *Analysis*. Ce rapport dans son intégralité fait office de *Presentation*.


# *Identification* et *Collection*

L'image de Samsung Galaxy S10 trouvable [ici](https://cfreds.nist.gov/all/FrancescoServida%2FDFRWS/SamsungGalaxyS10Android10DFRWS2021).

Celle-ci provient du téléphone d'un suspect, considéré comme tel grâce à une précédente analyse forensique[^1], suite à la découverte d'un dispositif de Skimming dans un distributeur de Lausanne, Suisse.

Il a été arrêté à l'aéroport de Genève le 20 avril 2021, alors qu'il essayait d'embarquer avec un billet acheté avec une carte bancaire volée.

Une analyse préliminaire a montré que des échanges de SMS encodés était intéressante.

# Données trouvées

## Identité

## Localisation

## Messages

## Skimming

### Transactions Bitcoin


# Analyse



# Conclusion{-}

Suite à l'analyse du téléphone du suspect, nous avons été en mesure d'établir clairement :

- Qu'il fait partie de l'organisation fictive [HYDRA][]
