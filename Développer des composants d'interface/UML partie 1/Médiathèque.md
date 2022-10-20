# Cas d'utilisation "Gère les prêts"
## Description
<br>

Ce cas d'utilisation permet de saisir les information concernant l'emprunt d'un document par un usager

<br>

---

<br>

## Workflow

<br>

### <ins>Condition</ins>

Seul un employe ou un bénévole peut opérer cette saisie.

Les bénévoles n’ont accès à l’enregistrement des emprunts que sur une période déterminée.

L'usager a payé sa cotisation et n'a pas plus de 5 emprunts en cours.

Enregistrement de nouveaux usagers ou de nouveaux documents sont effectués uniquement par le personnel.

L'usage doit possèder une carte de lecteur.

Tout emprunt de CD-Rom nécessite une caution.

Tout emprunt de microfilm nécessite un écran libre.

Ce cas d'utilisation n'est disponible que pendant la journée aux heures d'ouverture de l'établissement.

<br>

### <ins>Résultats</ins>

<br>

Un prêt client est enregistrée.

Les information concernant le client sont mises à jour.

<br>

---

<br>

## Flot Nominal

<br>

L'employe ou le bénévole recherche les coordonnées du client.

Le système lui affiche les informations connues sur le client.

L'employe ou le bénévole saisit la référence du document a emprunté.

Le système contrôle l'existence de la référence.

<br>

<ins>Si l'emprunt est confirmée:</ins>
    
- L'emprunt est enregistrée.
- L'état du livre est mise à jours.
- L'état du client est mise à jours.

<br>

Le cas d'utilisation prend fin.

<br>

---

<br>

## Flots alternatifs

<br>

### <ins>Le client n'est pas répertorié</ins>

- L'employe suspend sa saisie de commande pour aller enregistrer le client.
- une fois chaque action menée, l'enregistrement de la commande peut reprendre.

<br>

### <ins>Les coordonnées du client sont erronées</ins>

<br>

Le sustème a détecté qu'une ou plusieurs informations saisies concernant le client sont absentes ou comporten des erreurs :

- Le système signale les informations en erreur.
- L'employe corrige les erreurs.
- Ceci se répète jusqu'à ce que le système ne détecte plus d'erreur.

<br>

### <ins>La référence du document saisie est incorrecte</ins>

<br>

- Le système affiche une liste de régérences existantes.
- L'employe sélectionne la référence voulue.
- Le scénario normal reprend.

### <ins>Le prêt n'est pas confirmée</ins>

<br>

- Le système annule le prêt s'il a été enregistré.
- Le cas d'utilisation prend fin.

<br>

### <ins>L'usager ne possede pas de carte de lecteur</ins>

<br>

- Le cas d'utilisation prend fin.

<br>

### <ins>L'usager n'a pas payé sa cotisation</ins>

<br>

- Le cas d'utilisation prend fin.

<br>

### <ins>L'usager a plus de 5 emprunts en cours</ins>

<br>

- Le cas d'utilisation prend fin.

<br>

### <ins>Le document emprunté est un CD-ROM</ins>

<br>

- Demande d'une caution.
- Le cas d'utilisation continue normalement.

<br>

### <ins>Le document emprunté est un microfilm</ins>

<br>

- Si un écran est libre l'emprunt est enregistrer sinon le cas d'utilisation prend fin.

<br>

### <ins>Abandon a tout moment du processus</ins>

<br>

- Le cas d'utilisation prend fin.