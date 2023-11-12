% Rules for calculating the cost based on travelled kilometres
calculate_cost(X, Cost) :-
    X =< 1000,
    Cost is X * 0.08.
calculate_cost(X, Cost) :-
    X > 1000, X =< 10000,
    Cost is (1000 * 0.08) + ((X - 1000) * 0.04).
calculate_cost(X, Cost) :-
    X > 10000, X =< 20000,
    Cost is (1000 * 0.08) + (9000 * 0.04) + ((X - 10000) * 0.02).
calculate_cost(X, Cost) :-
    X > 20000,
    Cost is (1000 * 0.08) + (9000 * 0.04) + (10000 * 0.02).

% Predikat untuk menghitung biaya perjalanan
total_cost(X, Cost) :-
    calculate_cost(X, Cost).
