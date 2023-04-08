rainy(vancouver).
rainy(cypress_hills).
cold(cypress_hills).
snowy(X) :- rainy(X), !, cold(X).
snowy(saskatoon).