# regex

Vim       ASCII                    Description
          [\x00-\x7F]              Caracteres ASCII
          A-Za-z0-9                Caracteres alphanumeriques
\w        A-Za-z0-9_               Caracteres alphanumeriques et  _ 
\W        ^A-Za-z0-9_              Caracteres ne composant pas les mots
\a        A-Za-z                   Caracteres alphabetiques
\s  \t                             Espace et tabulation
\< \>     (?<=\W)(?=\w)|(?<=\w)(?=\W)        Positions de debut et fin de mots
          (?<=\W)(?=\W)|(?<=\w)(?=\w)        NOT a un debut ou une fin de mot
          \x00-\x1F\x7F            Caracteres de contrôle
\d        0-9                      Chiffres decimaux
\D        ^0-9                     Autre chose qu un chiffre decimal
          \x21-\x7E                Caracteres visibles
\l        a-z                      Lettres en minuscule
\p        \x20-\x7E                Caracteres imprimables
        ][!""#$%&''()*+./:;<=>?@\^_``{|}~-    Caracteres de ponctuation
\_s       \t\r\n\v\f               Caracteres d espacement
\S        ^ \t\r\n\v\f             Autre chose qu un caractere d espacement
\u        A-Z                      Lettres capitales
\x        A-Fa-f0-9                Chiffres hexadecimaux

/.../i            ignore les différences de casse.
/.../x            ignore les espaces et les sauts de ligne (selon les choix).
/.../s            traite l expression régulière comme une simple ligne

^            Début de ligne
$            Fin de ligne
.            N importe quel caractère excepté celui de début de ligne
[ ... ]      N importe lequel des caractères entre crochets ou une plage de caractères
[^ ... ]     Aucun des caractères listés entre crochets
\#           Correspond au caractère (#) suivant le backslash

\a           Caracteres alphabetiques A-Za-z
\b           Début de mot
\B           Fin de mot
\xNN         Un caractère avec un code ASCII hexadécimal NN
\n           0x10 (lf)
\r           0x13 (cr)  (retour de chariot)
\t           0x09 (tabulation)
\s           Un espace blanc (tab/space /cr/lf)
\S           Pas un espace blanc
\w           Un caractère alphanumérique A-Za-z0-9_
\W           Un caractère non alphanumérique
\d           Un chiffre 0-9
\D           Pas un chiffre
\u           Un caractère en majuscule
\l           Un caractère en minuscule

( ... )      Groupe des caractères dans une seule expression
|            Expression précédente ou suivante (OU logique)
*            Correspond zéro ou plusieurs fois qui précède.
+            Correspond une ou plusieurs fois qui précède
?            Correspond zéro ou une fois qui précède
{n}          A répéter n fois
{n,}         A répéter n a l infini
{n,m}        A répéter n à m fois

[a-z]                      lowercase letter
[A-Z]                      uppercase letter
[a-zA-Z]                   single letter
[0-9]                      single number
[a-zA-Z0-9]                single letter or number
[[:alnum:]]                Alphanumeric [a-z A-Z 0-9]
[[:alpha:]]                Alphabetic [a-z A-Z]
[[:blank:]]                Blank characters (spaces or tabs)
[[:cntrl:]]                Control characters
[[:digit:]]                Numbers [0-9]
[[:graph:]]                Any visible characters (excludes whitespace)
[[:lower:]]                Lowercase letters [a-z]
[[:print:]]                Printable characters (non-control characters)
[[:punct:]]                Punctuation characters
[[:space:]]                Whitespace
[[:upper:]]                Uppercase letters [A-Z]
[[:xdigit:]]               Hex digits [0-9 a-f A-F]

/./          toute ligne qui contient au moins un caractère
/../         toute ligne qui contient au moins deux caractères
/^#/         toute ligne qui commence par dièse
/^$/         toute ligne vide
/}$/         toute ligne qui termine par }
/} *$/       toute ligne qui termine par } et un caractère
/[abc]/      toute ligne qui contient a b ou c
/^[abc]/     toute ligne qui commence par a b ou c
