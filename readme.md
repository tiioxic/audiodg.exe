
# ENGLISH
# Fixing Microphone Chatter Issues with Voicemeeter or Voicemod

## Processor Affinity Configuration for `audiodg.exe`

This folder contains two files designed to optimize audio performance by specifically configuring processor affinity for the `audiodg.exe` process under Windows. These configurations are particularly useful for resolving microphone chatter issues when using software like Voicemeeter or Voicemod.

### Files Included

- **SetAffinityAudiodg.ps1**: A PowerShell script that assigns processor affinity for `audiodg.exe` at startup. This script adjusts the system's default settings to ensure that the audio process consistently uses the same CPU core, thereby reducing latency and improving sound quality.
- **priorite_audiodg.reg**: A REG file that modifies the CPU priority assigned to `audiodg.exe`. By adjusting the value of `CpuPriorityClass`, this file allows giving a higher priority to the audio process, which can also contribute to better audio performance.

### Usage

#### For SetAffinityAudiodg.ps1

**Scheduled Task Automation**

1. Press Win + R, type `taskschd.msc`, and press Enter to open the Task Scheduler editor.
2. Right-click on "Tasks", then choose "Create Task...".
3. Name the task (for example, "Run SetAffinityAudiodg.ps1") and select "At startup" as the trigger.
4. In the "Actions" step, add a new action with `powershell.exe` as the program/script and `-File "Path_to_SetAffinityAudiodg.ps1"` as the argument.
5. Check "Run with highest privileges".
6. Complete the task creation according to the prompts.

#### For priorite_audiodg.reg

1. Open the "Regedit" (Registry Editor) tool by typing `regedit` in the Windows search bar and pressing Enter.
2. Navigate to `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\audiodg.exe`.
3. Paste the contents of the `priorite_audiodg.reg` file into the Regedit text box and click OK.
4. Restart your computer for the changes to take effect.

### Important Notes

- These modifications may have secondary effects on your system's overall performance. It is recommended to back up your registry before making changes.
- The use of these scripts and files should be done with caution and only if you are comfortable with advanced system modifications.

# French
# Correction des Problèmes de Grissellement du Micro avec Voicemeeter ou Voicemod

## Configuration de l'Affinité du Processeur pour `audiodg.exe`

Ce dossier contient deux fichiers conçus pour optimiser les performances audio en configurant spécifiquement l'affinité du processeur pour le processus `audiodg.exe` sous Windows. Ces configurations sont particulièrement utiles pour résoudre les problèmes de grissellement du microphone lors de l'utilisation de logiciels comme Voicemeeter ou Voicemod.

### Fichiers Contenus

- **SetAffinityAudiodg.ps1**: Un script PowerShell qui assigne l'affinité du processeur pour `audiodg.exe` dès le démarrage. Ce script ajuste les paramètres par défaut du système pour s'assurer que le processus audio utilise constamment le même cœur de processeur, réduisant ainsi la latence et améliorant la qualité sonore.
- **priorite_audiodg.reg**: Un fichier REG qui modifie la priorité CPU accordée à `audiodg.exe`. En ajustant la valeur de `CpuPriorityClass`, ce fichier permet de donner une priorité plus élevée au processus audio, ce qui peut également contribuer à une meilleure performance audio.

### Utilisation

#### Pour SetAffinityAudiodg.ps1

**Automatisation à l'Aide de Tâches Planifiées**

1. Appuyez sur Win + R, tapez `taskschd.msc` et appuyez sur Entrée pour ouvrir l'éditeur de tâches planifiées.
2. Faites un clic droit sur "Tâches", puis choisissez "Créer une tâche...".
3. Nommez la tâche (par exemple, "Exécuter SetAffinityAudiodg.ps1") et choisissez "À l'ouverture de Windows" comme déclencheur.
4. Dans l'étape "Actions", ajoutez une nouvelle action avec `powershell.exe` comme programme/script et `-File "Chemin_vers_SetAffinityAudiodg.ps1"` comme argument.
5. Cochez "Exécuter avec les privilèges de l'utilisateur".
6. Terminez la création de la tâche selon les invites.

#### Pour priorite_audiodg.reg

1. Ouvrez l'outil "Regedit" (Éditeur de registre) en tapant `regedit` dans la barre de recherche de Windows et en appuyant sur Entrée.
2. Naviguez jusqu'à `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\audiodg.exe`.
3. Collez le contenu du fichier `priorite_audiodg.reg` dans la zone de texte de Regedit et cliquez sur OK.
4. Redémarrez votre ordinateur pour que les modifications prennent effet.

### Notes Importantes

- Ces modifications peuvent avoir des effets secondaires sur les performances générales de votre système. Il est recommandé de sauvegarder votre registre avant d'apporter des modifications.
- L'utilisation de ces scripts et fichiers doit être effectuée avec prudence et uniquement si vous êtes à l'aise avec les modifications système avancées.
