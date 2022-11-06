cek_tahun(X, [X|_]).
cek_tahun(X, [_|T]) :- cek_tahun(X, T).