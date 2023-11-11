% Predikat untuk menghitung jumlah elemen dalam sebuah list
hitung_elemen([], 0).
hitung_elemen([_|T], N) :-
    hitung_elemen(T, N1),
    N is N1 + 1.

% Predikat untuk membandingkan dua list berdasarkan jumlah elemennya
bandingkan(List1, List2, Result) :-
    hitung_elemen(List1, N1),
    hitung_elemen(List2, N2),
    (N1 < N2 -> Result = -1 ; N1 > N2 -> Result = 1 ; Result = 0).

% Predikat untuk sorting list of lists
urut(ListA, SortedList) :-
    predikat_sort(ListA, bandingkan, SortedList).

% Implementasi sorting menggunakan insertion sort
predikat_sort([], _, []).
predikat_sort([H|T], Predikat, Sorted) :-
    predikat_sort(T, Predikat, SortedTail),
    sisipkan_sorted(H, SortedTail, Predikat, Sorted).

sisipkan_sorted(Elem, [], _, [Elem]).
sisipkan_sorted(Elem, [H|T], Predikat, [Elem, H|T]) :-
    call(Predikat, Elem, H, Result),
    Result =< 0.
sisipkan_sorted(Elem, [H|T1], Predikat, [H|T2]) :-
    call(Predikat, Elem, H, Result),
    Result > 0,
    sisipkan_sorted(Elem, T1, Predikat, T2).

% Contoh penggunaan
contoh :-
    urut([[alfa,bravo,charlie],[delta,echo],[fox,goat,hen],[deer,echo],[immortal,judge,king,leon],[mortal,naruto],[oscar]], L),
    write('L = '), write(L).
