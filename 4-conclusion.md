# Conclusion{-}

## Synthèse de l'enquête{-}

Suite à l'analyse forensique du Samsung Galaxy S10 saisi sur Werner von Strucker, cette investigation a permis d'établir de manière irréfutable plusieurs éléments probants :

### Appartenance à l'organisation HYDRA{-}

- **Identité confirmée** : [Werner von Strucker](https://en.wikipedia.org/wiki/Werner_von_Strucker), personnage fictif lié à l'univers Marvel/[HYDRA][]
- **Contacts criminels** : Correspondance avec `therealredskull41@gmail.com` (Red Skull)
- **Preuves visuelles** : Photo du logo [HYDRA][] prise à l'Université de Lausanne le 8 avril 2021
- **Communications chiffrées** : Messages décodés via OmniNotes révélant *Heil Hydra \emoji{octopus}!*

### Implication dans les activités de skimming{-}

- **Transactions financières** : Réseau d'adresses Bitcoin Cash pour l'obfuscation des fonds
- **Déplacements suspects** : Voyage coordonné à Genève le 15 avril 2021 pour rencontrer l'organisation
- **Tentative de fuite** : Billet d'avion Genève - New York du 20 avril 2021, utilisant une carte bancaire volée

### Géolocalisation et timeline{-}

- **Zone d'activité** : Région lausannoise (Bussigny, Prilly, Renens)
- **Point de contact** : International Conference Center (ICC) Genève, près du consulat turc
- **Chronologie établie** : Du 8 avril (recrutement HYDRA) au 20 avril 2021 (arrestation)

### Intégrité des preuves{-}

L'intégrité de l'image forensique a été vérifiée par contrôle de l'empreinte SHA2-256 :

```
54877505f1b4eb26c4cb6b43fd6338424660c207e678b773044a4a79d6e374b7
```

Cette vérification garantit que les données analysées n'ont subi aucune altération depuis leur acquisition le 21 avril 2021, respectant ainsi la chaîne de custody requise pour la recevabilité juridique.

### Recevabilité juridique{-}

Cette investigation respecte les standards forensiques internationaux :

- **Acquisition légale** : Saisie effectuée dans le cadre d'une perquisition judiciaire
- **Méthodologie certifiée** : Utilisation d'outils forensiques reconnus (Autopsy)
- **Documentation complète** : Traçabilité de chaque étape d'analyse
- **Principe de Locard** : Préservation de l'intégrité des preuves numériques

Le rapport est donc recevable devant un tribunal selon les standards de la digital forensics et les exigences de l'article 259 du Code de procédure pénale suisse concernant l'administration des preuves.

***

## Évaluation critique{-}

### Apports pédagogiques{-}

Ce projet nous a permis de maîtriser :

- La méthodologie forensique en 5 phases (Identification, Collection, Examination, Analysis, Presentation)
- L'utilisation d'Autopsy pour l'analyse d'images mobiles Android
- Le reverse engineering d'applications (déchiffrement OmniNotes)
- L'investigation de fraudes bancaires par skimming et analyse d'enregistrements audio
- La consultation et traçage de transactions crypto-monnaies (Bitcoin Cash)
- La corrélation de preuves multiples (géolocalisation, communications, transactions)

### Défis techniques rencontrés{-}

- **Performance** : Temps d'analyse élevé d'Autopsy sur l'image complète (plusieurs heures)
- **Cryptographie** : Déchiffrement manuel des messages AES/ECB nécessitant l'analyse du code source
- **Corrélation** : Mise en relation de preuves dispersées (photos, messages, blockchain, géolocalisation)

Cette investigation démontre l'efficacité des techniques de mobile forensics pour reconstituer des activités criminelles complexes, même face à des tentatives de dissimulation par chiffrement.
