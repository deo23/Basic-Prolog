max_of_two(X,Y,X) :- X >= Y.
max_of_two(X,Y,Y) :- X < Y.
find_max_list([X],X).
find_max_list([X|Rest],Max) :-
    find_max_list(Rest,MaxRest),
    max_of_two(X,MaxRest,Max).