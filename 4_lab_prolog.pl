

kiva :- catch(Make),
    write('your'),
    write(Make),
    write('order is ready to be collected'),
    nl.
undo.


input(Question):-
write('would you like a'),
write(Question),
write('?'),
read(output),
nl,
((output == yes; output == y)
->

assert(yes(Question));
assert(no(Question)), fail).

:- dynamic yes/1 , no/1.

verify(Order):-
(yes(Order):-
->
true;
(no(Order)
->
fail;
input(Order))).


undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.

grasp(lenova):-lenova ,!.
grasp(apple):- apple ,!.
grasp(empty_basket).

lenova:-
    verify(laptop),
    verify(lenova),
    verify(black_color),
    verify(big_screen).
 lenova:-
    verify(laptop),
    verify(lenova),
    verify(black_color),
    verify(small_screen).
lenova:-
    verify(laptop),
    verify(lenova),
    verify(grey_color),
    verify(big_screen).
apple:-
    verify(mackbook),
    verify(white_color),
    verify(large_screen).

apple:-
    verify(mackbook),
    verify(white_color),
    verify(mini_screen).

apple:-
    verify(mackbook),
    verify(pink_color),
    verify(large_screen).
apple:-
    verify(mackbook),
    verify(pink_color),
    verify(mini_screen).




