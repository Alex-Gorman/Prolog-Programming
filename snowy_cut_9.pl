rainy(vancouver).
cold(cypress_hills).
rainy(cypress_hills):- !.
snowy(X) :- rainy(X), cold(X).
snowy(saskatoon).

# ?- rainy(C).
# C = vancouver ;
# C = cypress_hills.

# ?- snowy(C).
# C = cypress_hills ;
# C = saskatoon.
