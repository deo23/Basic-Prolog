:- use_module(library(random)).
:- use_module(library(lists)).

% Fungsi untuk menghasilkan pasangan karakter dan angka secara acak
generate_random_pair(Char-Num) :-
    random_member(Char, ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']),
    random_between(0, 100, Num).

% Fungsi untuk menghasilkan pasangan karakter dan angka secara acak sebanyak N elemen
generate_random_pairs(N, Pairs) :-
    length(Pairs, N),
    maplist(generate_random_pair, Pairs).

% Fungsi utama untuk menghasilkan pasangan karakter dan angka secara acak sebanyak N elemen
pasanganrandom(D, N) :-
    generate_random_pairs(N, D).

% Contoh penggunaan
% pasanganrandom(D, 10).
% pasanganrandom(D, 10).
% pasanganrandom(D, 27).
