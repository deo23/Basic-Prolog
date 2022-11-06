ganda([],[]).
ganda([H|T],[H,H|T2]) :- ganda(T,T2).