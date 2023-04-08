rainy(vancouver).
rainy(cypress_hills).
cold(cypress_hills).
snowy(saskatoon).
snowy(X) :- !, rainy(X), cold(X).
snowy(regina).



