
rainy(vancouver).
rainy(cypress_hills).
cold(cypress_hills).
snowy(X) :- rainy(X), cold(X).

# How to run
# swipl -s snowy_1.pl