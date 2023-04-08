rainy(cypress_hills).
rainy(vancouver):- !.
rainy(regina).
cold(cypress_hills).
cold(regina).
snowy(X) :- rainy(X), cold(X).
snowy(saskatoon).

# ?- rainy(C).
# C = cypress_hills ;
# C = vancouver.

