parent(david,jeremy).
parent(david,peter).
parent(david,simon).
parent(pat,jeremy).
parent(pat,peter).
parent(pat,simon).
parent(jeremy,william).
parent(jeremy,tim).
parent(jeremy,josephine).
parent(sandra,william).
parent(sandra,tim).
parent(sandra,josephine).
parent(peter,rosemary).
parent(peter,jonathan).
parent(carol,rosemary).
parent(carol,jonathan).
parent(simon,miranda).
parent(simon,emily).
parent(clare,miranda).
parent(clare,emily).

male(david).
male(jeremy).
male(peter).
male(simon).
male(william).
male(tim).
male(jonathan).

female(pat).
female(sandra).
female(carol).
female(clare).
female(rosemary).
female(josephine).
female(miranda).
female(emily).

father(X,Y) :- male(X), parent(X,Y).
mother(X,Y) :- female(X), parent(X,Y).
grandparent(X,Y) :- parent(X,Z), parent(Z,Y).
son(X, Y) :- parent(Y, X), male(X).
daughter(X, Y) :- parent(Y, X), female(X).
grandfather(X, Y) :- parent(X,Z), parent(Z,Y), male(X).
grandmother(X, Y) :- parent(X,Z), parent(Z,Y), female(Y).
grandson(X, Y) :- grandparent(Y, X), male(X).
granddaughter(X, Y) :- grandparent(Y, X), female(X).
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).