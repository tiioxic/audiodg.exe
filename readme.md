# Configuration de l'Affinité du Processeur pour audiodg.exe

Ce dossier contient deux fichiers utilisés pour configurer spécifiquement l'affinité du processeur pour le processus `audiodg.exe` sous Windows. Cela peut être utile pour optimiser les performances audio sur certains systèmes.

## Fichiers Contenus

1. **SetAffinityAudiodg.ps1** : Un script PowerShell qui définit l'affinité du processeur pour `audiodg.exe` au démarrage. Ce script modifie les paramètres par défaut du système pour garantir que le processus audio utilise toujours le même cœur de processeur, réduisant ainsi la latence et améliorant la qualité sonore.

2. **priorite_audiodg.reg** : Un fichier REG qui ajuste la priorité CPU pour `audiodg.exe`. En modifiant la valeur de `CpuPriorityClass`, ce fichier permet d'accorder une priorité plus élevée au processus audio, ce qui peut également contribuer à une meilleure performance audio.

## Utilisation

### Pour SetAffinityAudiodg.ps1

#### Automatisation à l'Aide de Tâches Planifiées

Pour exécuter automatiquement le script à chaque démarrage de Windows, suivez ces étapes :

1. Appuyez sur `Win + R`, tapez `taskschd.msc` et appuyez sur Entrée pour ouvrir l'éditeur de tâches planifiées.
2. Faites un clic droit sur "Tâches", puis choisissez "Créer une tâche...".
3. Nommez la tâche (par exemple, "Exécuter SetAffinityAudiodg.ps1") et choisissez "À l'ouverture de Windows" comme déclencheur.
4. Dans l'étape "Actions", ajoutez une nouvelle action avec `powershell.exe` comme programme/script et `-File "Chemin_vers_SetAffinityAudiodg.ps1"` comme argument.
5. Cochez "Exécuter avec les privilèges de l'utilisateur".
6. Terminez la création de la tâche selon les invites.

### Pour priorite_audiodg.reg

1. Ouvrez l'outil "Regedit" (Éditeur de registre) en tapant `regedit` dans la barre de recherche de Windows et en appuyant sur Entrée.
2. Naviguez jusqu'à `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\audiodg.exe`.
3. Collez le contenu du fichier `priorite_audiodg.reg` dans la zone de texte de Regedit et cliquez sur OK.
4. Redémarrez votre ordinateur pour que les modifications prennent effet.

## Notes Importantes

- Ces modifications peuvent avoir des effets secondaires sur les performances générales de votre système. Il est recommandé de sauvegarder votre registre avant d'apporter des modifications.
- L'utilisation de ces scripts et fichiers doit être effectuée avec prudence et uniquement si vous êtes à l'aise avec les modifications système avancées.
