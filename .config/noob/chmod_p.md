# chmod

Directory/User/Group/Others    Logique      Decimal
aucun droit                    (---)          0
execution seulement            (--x)          1
ecriture seulement             (-w-)          2
ecriture et execution          (-wx)          3
lecture seulement              (r--)          4
lecture et execution           (r-x)          5
lecture et ecriture            (rw-)          6
tous les droits                (rwx)          7

r = 4
w = 2
x = 1

r w x = 7
4+2+1 = 7

r w - r - - - - - = 640
4+2+0|4+0+0|0+0+0 = 640


u user
g group
o other
a all
+ ajout
- retire
= affecte
ex : chmod g+w, o+r-w FILE

