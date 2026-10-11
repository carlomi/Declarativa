almacenar(N, [N]) :-
    N >= 0,
    N < 10.

almacenar(N, L) :-
    N >= 10,
    PrimerosDigitos is N // 10,
    UltimoDigito is N mod 10,
    almacenar(PrimerosDigitos, L1),
    append(L1, [UltimoDigito], L).
