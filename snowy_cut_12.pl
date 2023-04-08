rainy(vancouver):- !.
rainy(cypress_hills).
cold(cypress_hills).
snowy(X) :- rainy(X), cold(X), !.
snowy(saskatoon).

# ?- snowy(C).
# C = saskatoon.

# The cut never happens, this is why the output is Saskatoon
# like python and and and, if first one is wrong, then its all
# wrong
