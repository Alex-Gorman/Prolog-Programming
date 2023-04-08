/* 1 a) */
ever_married_to(charles, diana).
ever_married_to(diana, charles).
ever_married_to(camilla, charles).
ever_married_to(charles, camilla).

/* 1 b) */
child_of(william, charles).
child_of(william, diana).
child_of(harry, charles).
child_of(harry, diana).

child_of(george, william).
child_of(george, catherine).
child_of(charlotte, william).
child_of(charlotte, catherine).
child_of(louis, william).
child_of(louis, catherine).

child_of(archie, harry).
child_of(archie, meghan).
child_of(lilibet, harry).
child_of(lilibet, meghan).

/* 1 c) */
male(charles).
male(william).
male(george).
male(louis).
male(harry).
male(archie).

/* 1 d) */
female(diana).
female(camilla).
female(catherine).
female(charlotte).
female(meghan).
female(lilibet).

/* 1 e) */
deceased(diana).

/* 1 f) */
senior_royal(diana).
senior_royal(charles).
senior_royal(camilla).
senior_royal(william).
senior_royal(catherine).
senior_royal(george).
senior_royal(charlotte).
senior_royal(louis).

/* 2 a) */
uncle_of(X, Y) :- male(X), child_of(Y, Z), child_of(Z, A), child_of(Z, A), !.

/* 2 b) */
/* grandmother_of(X, Y) :- female(X), child_of(Y, Z), child_of(Z, X), !. */
grandmother_of(X, Y) :- female(X), child_of(Y, Z), child_of(Z, X).

/* 2 c) */
grandson_of(X, Y) :- male(X), child_of(X, Z), child_of(Z, Y), !.

/* 2 d) */
parent_of(X, Y) :- child_of(Y, X), !.

/* 2 e) */
mother_of(X, Y) :- child_of(Y, X), female(X), !.

/* 2 f) */
/* stepmother_of(X, Y) :- female(X), ever_married_to(X, Z), child_of(Y, Z), !.*/
stepmother_of(X, Y) :- female(X), ever_married_to(X, Z), child_of(Y, Z).

/* 2 g) */
son_of(X, Y) :- child_of(X, Y), male(X), !.




