task([],[]).
task([H|T],W) :-(  H mod 2)=:=1, task(T,W).
task([H|T],[H|W]) :-(  H mod 2)=:=0, task(T,W).
/*?- task([1,2,3,4,5,6,7,8,9,11,323,22,444,2324,433],W),write(W),nl.
[2,4,6,8,22,444,2324]
W = [2, 4, 6, 8, 22, 444, 2324]
*/

% В этой лабе надо две задачи решить и дать для одной или обех задач
% 1. Декларативную интерпретацию
% 2. Процедурную интерпретацию
% пример:

in(X, [X|_]).
in(X, [_|T]):-in(X,T).

% Декларативная:
% 1. Элемент принадлежит списку, если он - голова списка.
% 2. иначе (Элемент не является головой), элемент принадлежит
%    списку, если он принадлежит хвосту.
% Процедурная:
% Чтобы удостовериться, что элемент принадлежит списку надо
% 1. Проверить его наличие в голове списка, 
% 2. Если его там нет, то проверить не находится ли он в хвосте списка.