# Agence de voyage : réservation de trajets en train

Application de bureau en Java (JavaFX) pour une agence de voyage.
Un client crée son compte, cherche un trajet, choisit sa classe et règle sa réservation.
Un administrateur gère les comptes clients, les trajets et les réservations.
Les données sont enregistrées dans une base MySQL.

Projet de Programmation Orientée Objet réalisé en équipe à l'ENSA de Tétouan (décembre 2024 à janvier 2025).

Présentation du projet : https://pro-simpo.github.io/#pd-agency

## Fonctionnalités

**Espace client**

- Inscription et connexion.
- Recherche d'un trajet par gare de départ et gare d'arrivée.
- Affichage des autres trajets au départ de la même gare.
- Choix de la 1re ou de la 2e classe, puis formulaire de paiement.
- Enregistrement de la réservation.

**Espace administrateur**

- Connexion et création d'un compte administrateur.
- Comptes clients : recherche, liste complète, modification, suppression.
- Trajets : ajout, recherche par numéro de train, modification, suppression.
- Réservations : recherche, confirmation, suppression.

## Technologies

| Rôle | Outil |
| :--- | :--- |
| Langage | Java 11 |
| Interface | JavaFX 13, mise en forme en CSS |
| Base de données | MySQL, accès par JDBC (`mysql-connector-j` 9.0.0) |
| Construction | Maven |

## Installation

### 1. Base de données

Importez `database/agenceavion.sql` dans MySQL, par phpMyAdmin ou en ligne de commande :

```bash
mysql -u root < database/agenceavion.sql
```

Le script crée la base `agenceavion`, ses cinq tables et des données d'exemple.

L'application se connecte à `localhost:3306` avec l'utilisateur `root` sans mot de passe.
Ces paramètres sont écrits dans les contrôleurs (`src/main/java/com/mycompany/agenceavion/controllers`).

### 2. Lancement depuis les sources

Il faut un JDK 11 ou plus récent et Maven.

```bash
git clone https://github.com/Pro-simpo/JAVA-Travel_Agency_Project.git
cd JAVA-Travel_Agency_Project
mvn clean javafx:run
```

### 3. Lancement sans compiler (Windows)

Téléchargez `agence_voyage_train.jar` dans les [versions du dépôt](https://github.com/Pro-simpo/JAVA-Travel_Agency_Project/releases), puis :

```bash
java -jar agence_voyage_train.jar
```

### Comptes d'exemple

| Espace | Nom d'utilisateur | Mot de passe |
| :--- | :--- | :--- |
| Client | `alpha` | `1234` |
| Administrateur | `beta` | `1234` |

## Organisation du code

```
pom.xml
database/
└── agenceavion.sql              Tables et données d'exemple
src/main/java/com/mycompany/agenceavion/
├── App.java                     Point d'entrée, passage d'un écran à l'autre
└── controllers/
    ├── LoginController          Connexion client
    ├── SignUpController         Inscription client
    ├── WelcomeController        Recherche de trajet
    ├── SearchResultsController  Résultats et choix de la classe
    ├── PaymentController        Paiement et réservation
    ├── AdminLoginController     Connexion administrateur
    ├── AdminRegistrationController  Création d'un compte administrateur
    ├── AdminDashboardController     Accueil administrateur
    ├── ManageClientsController      Gestion des comptes clients
    ├── ManageRoutesController       Gestion des trajets
    └── ManageReservationsController Gestion des réservations
src/main/resources/
├── css/                         Feuilles de style JavaFX
└── Images/                      Logo et images de fond
```

## Démonstration

Une vidéo de démonstration est jointe aux [versions du dépôt](https://github.com/Pro-simpo/JAVA-Travel_Agency_Project/releases).

## Limites connues

Ce projet est un exercice de cours :

- le paiement est simulé, aucune transaction réelle n'a lieu ; n'y saisissez jamais de vraies données de carte ;
- les mots de passe sont enregistrés en clair dans la base ;
- les données fournies sont fictives.

## Équipe

Taobata Simporé, Abdoul-Moumouni Diallo, Doha Bouarraf, Youssra Makri.
Encadrant : M. Fouad Aytouna.
