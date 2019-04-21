# dokuwiki

**gras**
//italique//
__souligné__
''à chasse fixe''
<sub>indices</sub>
<sup>exposants</sup>
<del>supprimé</del>

[[nom de page|texte de lien]]
[[voici:des:categories]]
[[syntax#internes|cette section]]
[[\\serveur\partage|ceci]]
[[categories:nom de page|texte de lien]]\\

((Ceci est une note de pied de page))
==== Titre niveau 3 ====
=== Titre niveau 4 ===
== Titre niveau 5 ==
---- ligne

FIXME
DELETEME
:?:
:!:

{{wiki:dokuwiki-128.png}}                #taille originale
{{wiki:dokuwiki-128.png?50}}             #largeur donnée
{{wiki:dokuwiki-128.png?200x50}}         #hauteur et largeur données
{{http://url/images/php.gif?200x50}}     #Image externe redimensionnée
{{ wiki:a_droite-128.png}}
{{wiki:a_gauche-128.png }}
{{ wiki:centre-128.png }}
{{ wiki:dokuwiki-128.png |This is the caption}}
{{wiki:dokuwiki-128.png?nolink}}         #Pas de lien
{{wiki:dokuwiki-128.png?direct}}         #Lien direct sur le media
{{wiki:dokuwiki-128.png?linkonly}}       #Uniquement le lien direct
[[http://url|{{wiki:dokuwiki-128.png}}]] #Lien vers une page
{{film.mp4|une vidéo sympa}}

  * Ceci est une liste
  * Le second élément
    * Vous pouvez avoir plusieurs niveaux
  * Un autre élément
  - La même liste mais ordonnée
  - Un autre élément
    - Utilisez simplement l indentation pour des niveaux plus profonds
  - Et voilà

> citation
>> reponse

^ Titre 1         ^ Titre 2           ^ Titre 3                            ^
| Ligne 1 Col 1   | Ligne 1 Col 2     | Ligne 1 Col 3                      |
| Ligne 2 Col 1   | colonnes fusionnées (notez la double barre verticale) ||
| Ligne 3 Col 1   | Ligne 2 Col 2     | Ligne 2 Col 3                      |

|              ^ Titre 1                  ^ Titre 2          ^
^ Titre 3      | Ligne 1 Col 2            | Ligne 1 Col 3    |
^ Titre 4      | pas de fusion cette fois |                  |
^ Titre 5      | Ligne 2 Col 2            | Ligne 2 Col 3    |

^ Titre 1       ^ Titre 2                                  ^ Titre 3       ^
| Ligne 1 Col 1 |  Cette cellule s étend\\ verticalement   | Ligne 1 Col 3 |
| Ligne 2 Col 1 | :::                                      | Ligne 2 Col 3 |
| Ligne 3 Col 1 | :::                                      | Ligne 3 Col 3 |

^          Tableau avec alignement         ^^^
|        droite|    centré    |gauche        |
|gauche        |        droite|    centré    |
| xxxxxxxxxxxx | xxxxxxxxxxxx | xxxxxxxxxxxx |

<nowiki>
afficher du texte exactement comme il est saisi
</nowiki>
<code nom_du_code fichier.code>
Ceci est du code colorisé et disponible au téléchargement
</code>
<file>
citation d un fichier 
</file>
