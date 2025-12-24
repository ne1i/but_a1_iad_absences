# Projet BUT1 IAD - Gestion des Absences

Une application en C pour la gestion des absences étudiantes, développée dans le cadre du BUT1 Informatique.

## Description

Ce programme permet de gérer les absences des étudiants avec les fonctionnalités suivantes :
- Inscription des étudiants avec nom et groupe
- Enregistrement des absences (date, demi-journée)
- Gestion des justificatifs d'absence
- Validation des justificatifs
- Affichage des listes d'étudiants et de leurs absences
- Identification des étudiants défaillants

## Compilation

```bash
gcc app.c -o app
```

## Utilisation

Le programme lit les commandes depuis l'entrée standard. Vous pouvez l'utiliser de deux manières :

### Mode interactif
```bash
./app
```
Puis tapez les commandes directement.

### Mode fichier
```bash
./app < fichier_commandes.txt
```

## Commandes disponibles

- `inscription <nom> <groupe>` - Inscrire un nouvel étudiant
- `absence <id_etudiant> <date> <am/pm>` - Enregistrer une absence
- `etudiants <date>` - Afficher la liste des étudiants avec leurs absences
- `etudiant <id_etudiant> <date>` - Afficher le détail des absences d'un étudiant
- `justificatif <id_absence> <date> <justification>` - Déposer un justificatif
- `validations` - Afficher les justificatifs en attente de validation
- `validation <id_absence> <ok/ko>` - Valider ou refuser un justificatif
- `defaillants <date>` - Afficher les étudiants défaillants
- `exit` - Quitter le programme

## Tests

Des tests sont disponibles dans le répertoire `in-out/` :
- `sans-erreur/` - Tests sans erreurs attendues
- `avec-erreurs/` - Tests avec gestion d'erreurs

Pour lancer les tests :
```bash
chmod +x test.sh
./test.sh
```

## Structure du projet

- `app.c` - Code source principal
- `test.bat` / `test.sh` - Scripts de test
- `in-out/` - Fichiers de test d'entrée/sortie
- `README.md` - Documentation du projet
