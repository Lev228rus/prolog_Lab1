/*
skit' dva spiska v odin, soxraniv uporydochenost'
*/

%cliynie spiskov
conc([], Q, Q).
conc([HP | TP], Q, [HP | TR]) :-
conc(TP, Q, TR).

%sortirovka
sorting(L,S):-
transp(L,S),
sorted(S).

sorted([]).
sorted([_]).
sorted([X,Y|T]):-
X=<Y,
sorted([Y|T]).

transp([],[]).
transp([X|T],P):-
transp(T,PT),
del(X,P,PT).

del(X,[X|T],T).
del(X,[Y|T],[Y|DT]):-
del(X,T,DT).

%conc([8,7,6,5],[4,3,2,1],L),sorting(L,R)
