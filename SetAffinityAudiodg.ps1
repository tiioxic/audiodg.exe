# Définit l'affinité du processeur pour audiodg.exe au démarrage
$Process = Get-Process -Name audiodg
$Process.ProcessorAffinity = 1
