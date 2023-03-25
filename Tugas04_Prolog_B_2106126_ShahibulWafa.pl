ayah(john, peter).    /* john adalah ayah dari Peter. */
ayah(john, mary).
ayah(david, liza).
ayah(david, john).
ayah(jack, susan).
ayah(jack, ray).
ibu(susan, peter).   /* Susan adalah ibu dari Peter. */
ibu(susan, mary).
ibu(ami, liza).
ibu(amy, john).
ibu(karen, susan).
ibu(karen, ray).
cinta(john, susan).     /* John mencintai Susan. */
b1([p, 2, q], p).       /* Tidak ada arti khusus. */

yeye(Z, Y) :- ayah(Z, Temp), ayah(Temp, Y). /* yeye(X, Y) menunjukkan bahwa X adalah "yeye" (kakek) */

mama(Z, Y) :- ibu(Z, Temp), ayah(Temp, Y). /* ama(X, Y) menunjukkan bahwa X adalah "mama" (nenek dari pihak ibu) */

gunggung(Z, Y) :- ayah(Z, Temp), ibu(Temp, Y). /* , gunggung(X, Y) menunjukkan bahwa X adalah "gunggung" (kakek dari pihak ibu) */

popo(Z, Y) :- ibu(Z, Temp), ibu(Temp, Y).

a(A1, [A | B]) :- A1 is A + 1.
a(A, [B | C]) :- a(A, C),ayah(john, peter).
