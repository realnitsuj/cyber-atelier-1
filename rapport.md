---
documentclass: report
title: |
  ![](logo-uqac.eps){height=1in}

  Atelier 1 : Mobile Forensics
subtitle: |
  8INF968 - Atelier pratique en cybersécurité I

  Fehmi Jaafar\hspace{2em}Samuel Desbiens
author:
- Justin Bossard
- Mattéo Gouhier
- Paul Mathé
- Samuel Plet
date: "3 octobre 2025"
toc: true
lof: true
numbersections: true
fontsize: 12pt
papersize: a4
geometry: margin=2cm
lang: fr-FR
linkcolor: blue
header-includes:
- \addto\captionsfrench{\renewcommand{\chaptername}{Partie}}
---

<!--Liens-->
[Autopsy]: https://www.autopsy.com/
[HYDRA]: https://fr.wikipedia.org/wiki/HYDRA


# Introduction{-}

[^Locard]: Chaque interaction laisse une trace
[^5WH]: Who, what, when, where, why, and how

L'objectif de ce premier projet de *Mobile Forensic* est de réaliser une investigation sur une image de smartphone, dans un contexte préétabli, afin de mettre en évidence des preuves numériques pertinentes pour une enquête.

Par définition, la *Digital Forensics*, ici appliqué aux environnements mobiles, regroupe *l'ensemble de méthodes et d'outils visant à récupérer, préserver et examiner des preuves numériques issues ou transmises par des dispositifs électroniques*.  
Ce domaine s'appuie sur le principe de Locard[^Locard], et vise à répondre aux 5WH[^5WH].

L'investigation doit préserver l'intégrité des preuves et garantir une acquisition recevable juridiquement, en maintenant une chaîne de confiance.

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

Pour ce travail, les étapes d'*Identification* et de *Collection* ont déjà été effectués. Nous les présenterons dans un premier temps, avant de présenter successivement nos résultats pour *Examination* et *Analysis*. Ce rapport, dans son ensemble, constitue la phase de *Presentation*.


# *Identification* et *Collection*

> L'enquête présentée dans ce rapport s'inscrit dans une progression en 5 étapes du [Challenge 2021 de la DFRWS](https://dfrws.org/dfrws-2021-challenge), nous en sommes à la troisième étape.

Le 9 avril 2021, un dispositif de skimming a été découvert sur un distributeur automatique de la Poste suisse, à Lausanne. Une micro-SD intégrée au dispositif a été saisie et a révélé des traces d'utilisation frauduleuse liées à des cartes bancaires.

À partir de ces informations, une perquisition a été menée le 18 avril 2021 à Aoste, Italie, où un laboratoire de fabrication a été découvert. Un Raspberry Pi connecté à une imprimante 3D a pu être saisi. Une copie de sa micro-SD a permis d'étudier son rôle éventuel dans la production d'objets illicites.

L'exploitation de ces premiers résultats a conduit à l'identification d'un suspect, interpellé le 20 avril 2021 à l'aéroport de Genève alors qu'il tentait de voyager avec un billet acheté à l'aide d'une carte bancaire volée. Son téléphone a été saisi et une image complète du système de fichiers a été extraite le lendemain. Une analyse préliminaire a révélé la présence de SMS encodés, susceptibles de contenir des éléments de preuve pertinents pour la compréhension des faits.

Notre investigation se basera donc sur l'image en question.


***


- <https://cfreds.nist.gov/all/FrancescoServida%2FDFRWS/SamsungGalaxyS10Android10DFRWS2021>
- SHA2-256 : `54877505f1b4eb26c4cb6b43fd6338424660c207e678b773044a4a79d6e374b7`



# *Examination*

[^werner]: Il s'agit du nom d'un caractère fictif de Marvel, lié à [HYDRA][]. Voir <https://en.wikipedia.org/wiki/Werner_von_Strucker>

Pour examiner l'image, nous allons utiliser principalement le logiciel [Autopsy][]. Celui-ci permet d'analyser et d'extraire toutes les informations potentiellement utiles d'une image disque : métadonnées, conversations, journal d'appels, mails, contacts...

Nous allons commencer par montrer le plus visible, en allant vers les données plus compliquées à extraire, ce qui inclus les messages encodés, mentionnés précédemment comme étant pertinents.

<!--## Mise en place de l'environnement de travail-->

<!--Comment configurer le projet dans Autopsy ?-->

<!--### Installation d'Autopsy-->


## Identité

Commençons par présenter le propriétaire du téléphone : il se nomme Werner von Strucker[^werner].

![Informations civiles - `Dump/data/system_ce/0/snapshots/141_reduced.jpg`](figures/141_reduced.jpg){height=400px}


## Photographies

Dans les photos, un certain nombre semble intéressant.

Tout d'abord, un selfie de Werner.

![Selfie - `Dump/data/media/0/DCIM/Camera/IMG_20210411_144226.jpg`](./figures/IMG_20210411_144226.jpg){height=200px}

Par ailleurs, une photo d'une *piadina*, scène triviale d'alimentation, illustre qu'il emploie son téléphone à titre personnel. D'autres photos vont dans ce sens.

![*Piadina* - `Dump/data/media/0/DCIM/Camera/20210420_125202.jpg`](figures/20210420_125202.jpg){height=200px}

## Localisation

16 photos ont une localisation associée. On voit donc que l'utilisateur en a pris uniquement en Suisse, principalement aux abords de Lausanne.

![Carte des photos géolocalisées](localisation.png)

## Contacts

[^bddGM]: `Dump/data/data/com.google.android.gm/databases/`  
`peopleCache_vonstruckerwerner@gmail.com_com.google_11.db`

Une base de données GMail[^bddGM] donne un aperçu de ses contacts. Notons l'adresse `therealredskull41@gmail.com`. En effet, [Red Skull](https://en.wikipedia.org/wiki/Red_Skull) est un personnage fictif du même univers que Werner von Strucker.


## Messages

## Skimming

### Transactions Bitcoin


# *Analysis*



# Conclusion{-}

Suite à l'analyse du téléphone du suspect, nous avons été en mesure d'établir clairement :

- Qu'il fait partie de l'organisation fictive [HYDRA][]
