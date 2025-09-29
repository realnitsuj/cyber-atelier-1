# *Examination*

[^werner]: Il s'agit du nom d'un caractère fictif de Marvel, lié à [HYDRA][]. Voir <https://en.wikipedia.org/wiki/Werner_von_Strucker>

> *La racine des figures correspond à `Dump/data/`*

Pour examiner l'image, nous allons utiliser principalement le logiciel [Autopsy][]. Celui-ci permet d'analyser et d'extraire toutes les informations potentiellement utiles d'une image disque : métadonnées, conversations, journal d'appels, mails, contacts...

Nous allons commencer par montrer le plus visible, en allant vers les données plus compliquées à extraire, ce qui inclus les messages encodés, mentionnés précédemment comme étant pertinents.

## Mise en place de l'environnement de travail

### Installation d'[Autopsy][]

Pour installer [Autopsy][], il suffit de se rendre sur la [page de téléchargement](https://www.autopsy.com/download/). On peut l'installer sur GNU/Linux, MacOS et Windows, les instructions pour chaque OS sont détaillées sur le site officiel.

### Création du projet

Après installation, on peut créer le projet. On démarre [Autopsy][], on sélectionne `New Case`, puis on nomme le projet `Samsung`, par exemple.  
On remplit les informations optionnelles de manière adéquate, puis on finit la création du projet.

### Ajout des données

Après création du projet, on peut ajouter les données. Dans l'ordre :

1. `Generate new host name based on data source name`
2. `Logical files`
3. `Local files and folders`, puis on ajoute le `zip` directement.
4. On laisse tout coché, sauf `iOS analyzer` (et `Android Analyzer (aLEAPP)` si on n'a pas Windows)
5. On termine, et on attend patiemment la fin de l'analyse

### Exploitation des données

**TODO**

## Identité

Commençons par présenter le propriétaire du téléphone : il se nomme Werner von Strucker[^werner].

![Informations civiles - `/system_ce/0/snapshots/141_reduced.jpg`](figures/Export/141_reduced.jpg){height=400px}


## Photographies

Dans les photos, un certain nombre semble intéressant.

Tout d'abord, un selfie de Werner.

![Selfie - `/media/0/DCIM/Camera/IMG_20210411_144226.jpg`](figures/Export/IMG_20210411_144226.jpg){height=200px}

Par ailleurs, une photo d'une *piadina*, scène triviale d'alimentation, illustre qu'il emploie son téléphone à titre personnel. D'autres photos vont dans ce sens.

![*Piadina* - `/media/0/DCIM/Camera/20210420_125202.jpg`](figures/Export/20210420_125202.jpg){height=200px}

### Transactions Bitcoin

Une capture d'écran avec une adresse Bitcoin est présente.

![Adresse Bitcoin - `/clipboard/1740051371957_356_87/Screenshot_20210418-161954_BRD.jpg_thum.jpg`](figures/Export/Screenshot_20210418-161954_BRD.jpg_thum.jpg){height=300px}

En regardant sur la blockchain, on retrouve l'historique de transactions de cette adresse : <https://www.blockchain.com/explorer/addresses/bch/qpuv475w4wytd6agujpzfl9muzajf9le45nkefd23y>.

On identifie les adresses BTC avec leurs 4 premiers et leurs 4 derniers caractères. On note une transaction de la même manière.

L'adresse en question a deux transactions associées, impliquant 5 autres adresse BTC :

- [d14c-d8f2](https://www.blockchain.com/fr/explorer/transactions/bch/d14c75d148e7b4edbed737fbf6bef2e182aad47f30cd60f48c2a9176b73ad8f2)
- [bddf-e925](https://www.blockchain.com/explorer/transactions/bch/bddf7ed0ebfbb893208878f874266959c1780d49496bc061b41d6a93f361e925)

## Localisation

16 photos ont une localisation associée. On voit donc que l'utilisateur en a pris uniquement en Suisse, principalement aux abords de Lausanne.

![Carte des photos géolocalisées](figures/localisation.png){height=300px}

## Contacts

[^bddGM]: `/data/com.google.android.gm/databases/peopleCache_vonstruckerwerner@gmail.com _com.google_11.db`

Une base de données GMail[^bddGM] donne un aperçu de ses contacts. Notons l'adresse `therealredskull41@gmail.com`. En effet, [Red Skull](https://en.wikipedia.org/wiki/Red_Skull) est un personnage fictif du même univers que Werner von Strucker.


## Messages

L'examen des données extraites du téléphones du suspect a permis de révéler la présence de messages illisibles reçus et envoyés, suggérant l'utilisation de méthodes d'encryption des messages.

Par exemple : `2 2 +41786909109  1617901761280 0  1 -1 2   HHY6cKEMFlNU3NPs/bxhxPKQ RyDXUrQK7a8tHtX5xBXdYQ=  0 0 1 it.feio.android.omninotes 1 0 0 228015930119996 0    0 0  0 0 0  0  0 0 0 0 0 0 0  0
`

L'analyse des métadonnées associées à ces messages met en évidence la provenance de ces messages, [OmniNotes][], une application open-source de prise de notes. Voir des messages cryptés depuis une application de prise de notes a priori non dédiée à l'envoi de message est un indicateur fort de tentative de dissimulation.

La prochaine étape est d'analyser le code source de cette application présent sur l'appareil pour identifier les méthodes utilisées.

### Examen du code source d'[OmniNotes][]

Pour extraire le code de l'application présente sur l'appareil, nous avons utilisé [apk2java-linux](https://github.com/TheZ3ro/apk2java-linux).

L'examen des fonctions a confirmé son rôle dans l'envoi de messages, notamment via l'appel d'une fonction dédiée à l'envoi.	

```{.java .numberLines}
public void putComm(View object) {
	object = (EditText)this.findViewById(2131296976);
        object = new TextHelper(this.getResources()).put(object.getText().toString());
        if (object.length() > 160) {
            Toast.makeText((Context)this, (CharSequence)ZipHelper.decomp("eJwFQLENwDAIe8UH5I1u6ZL2gQgs1AUPqEuuR1eanI 6bVTuIV8JUxsCi/0Y832ED99UM+Q=="), (int)0).show();
            return;
        }
        if (object.equals((Object)"")) {
            Toast.makeText((Context)this, (CharSequence)ZipHelper.decomp("eJwFgLEJACAMBFfJMpaCK6R4QhqV+/mLsOARB/2kb8 WWnaUBZ9oIuA=="), (int)0).show();
            return;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(ZipHelper.decomp("eJwFQLEJADAMesU7+kOmXlCoSBYX7x /k0n8tDJMnHhQ48AYI"));
        stringBuilder.append((String)object);
        stringBuilder.append(" to ");
        stringBuilder.append(this.rsn());
        Toast.makeText((Context)this, (CharSequence)stringBuilder.toString(), (int)0).show();
        PendingIntent.getActivity((Context)this, (int)0, (Intent)new Intent((Context)this, CommActivity.class), (int)0);
        SmsManager.getDefault().sendTextMessage(this.rsn(), null, (String)object, null, null);
}
```

L'analyse a mis en évidence l'utilisation de blocs de données encodés :

```{.java .numberLines}
private String get_data() throws IOException, JSONException {
        String string2 = ZipHelper.decomp("eJwNyUsKwDAIBNATZSTbHietkH5wShUkt7frNyNe30Tm6hg PB3Z+ijztYDpM45eW3rrcunA5rQDMDhIV");
        Object object = new StringBuilder();
        object.append(string2);
        object.append(ZipHelper.decomp("eJwFwIEIAAAAACC0/a1OAEAAQA=="));
        object.append(ZipHelper.decomp(this.resources.getString(2131821101)));
        string2 = (HttpsURLConnection)new URL(object.toString()).openConnection();
        try {
            String string3;
            object = new BufferedReader((Reader)new InputStreamReader(string2.getInputStream()));
            Object object2 = new StringBuffer();
            while ((string3 = object.readLine()) != null) {
                object2.append(string3);
            }
            object = new JSONObject(String.valueOf((Object)object2)).getString("key");
            object2 = new SimpleDateFormat(ZipHelper.decomp("eJwNwIEAAAAMhECiULJ4idm3u4eyBRWSA6E="), Locale.getDefault()).format(new Date());
            string3 = new StringBuilder();
            string3.append((String)object);
            string3.append((String)object2);
            object = string3.toString();
            return object;
        }
        finally {
            string2.disconnect();
        }
}
```

Avec des bouts de code codés en `base64` et compressé en [zlib](https://www.zlib.net/), identifiable grâce au préfixe `eJw` :

- `eJwNyUsKwDAIBNATZSTbHietkH5wShUkt7frNyNe30Tm6hgPB3Z+ijztYDpM45eW3rrcunA5rQ DMDhIV` nous donne le lien vers un site nous permettant de récupérer une clé : `rb5CuefkDLyb9T`
- `eJwNwIEAAAAMhECiULJ4idm3u4eyBRWSA6E` nous donne `yyyy-MM-dd`.

En analysant ce bout de code on comprend que l'on va récupérer la clé sur le site Web, on récupère aussi la date actuelle que l'on va mettre sous format `yyyy-MM-dd` et que l'on va concaténer à la clé. Ce qui va nous donner une nouvelle clé permettant de coder les messages à partir d'une clé statique et d'une clé dépendant de paramètres temporels.  
Par exemple, un message envoyé le 15 Avril 2021 sera codé via la clé `rb5CuefkDLyb9T2021-04-15`.

 
Le code a permis de déterminer l'utilisation de l'algorithme de chiffrement par bloc AES dans le mode ECB avec le schéma PKCS5Padding :

```{.java .numberLines}
private byte[] save_msg(String string2) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, InvalidParameterSpecException, IllegalBlockSizeException, BadPaddingException, IOException, JSONException {
        SecretKeySpec secretKeySpec = new SecretKeySpec(this.get_data().getBytes(), "AES");
        Cipher cipher = Cipher.getInstance((String)"AES/ECB/PKCS5Padding");
        cipher.init(1, (Key)secretKeySpec);
        return cipher.doFinal(string2.getBytes("UTF-8"));
}
```

Après avoir crypté le message de cette façon, on va rajouter `HHY` devant ce message pour que l'application puisse différencier les messages chiffrés de ceux qui ne le sont pas.

```{.java .numberLines}
public String put(String string2) {
        try {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("HHY");
            stringBuilder.append(Base64.encodeToString((byte[])this.save_msg(string2), (int)2));
            return stringBuilder.toString();
        }
        catch (IOException | InvalidKeyException | NoSuchAlgorithmException | InvalidParameterSpecException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException | JSONException noSuchPaddingException) {
            return "";
        }
}
```

<!--IL MANQUE UN IF ICI-->

Pour résumer, on va coder les messages de la manière suivante :

$$\text{HHY}+\text{base64}(\text{AES avec clé hybride}(\text{Message Clair}))$$

Pour décoder on va donc :

1. enlever `HHY` du message crypté
2. traduire depuis la base64
3. décoder AES grâce à la clé créée à partir de `rb5CuefkDLyb9T` et de la date d'envoi du message

Cela nous a permis de pouvoir pouvoir lire les 42 messages qui ont été jusqu'alors illisibles.

### Messages décodés

Voici une partie de ces messages considérés comme les plus importants pour notre travail.

Heil Hydra \emoji{octopus}!
:   `6cKEMFlNU3NPs/bxhxPKQRyDXUrQK7a8tHtX5xBXdYQ=`


Conversation du 15 avril 2021 :

We need to meet you. Get to geneva asap, further instructions will follow.
:   `HHYbm0jyH9MsbIM1DsyvNU9iDm63RQa9/1Fxfrs/A75m3wAM04VwDGphJ4m9IUTjPQ//3qbJmQk xQQeu50WmK0zLHj93BiByuFEHsvHwzcfHsI`

understood, was headed to geneva anyway, already on a train.
:   `S6+p9IajgCnkXIm0tou uBzw/c5dSk4ZVzCEeA7BZmnR7+J5ybgmhLeXCyxpwovM8yFaK1NQtfAJXHKwHnMGIxg==`

Good. Meet us at our base. Below the Turkish consulate. Delete this message once read!
:   `HHYcdZD5nSpEbiNiPHaMn/eJR3qfnG1bBjxHLgN2Q91Jjx+DaAtq15BuatyPqSSH0ZOqLPbis2 11525r4RIkumQSF1p8xjb7tbOHzWN250Sqmoh9v+9kcE6lnWMOcYHo4ub`


## Skimming


