% Task 2: login page - run with: ?- login.
% Type each input followed by a full stop, e.g.  ali.   1234.

% Dataset: user(Username, Password)
user(ali, 1234).
user(sara, 5678).
user(noura, 9999).

login :- attempt(0).

% 3 attempts in total (the first one + 2 more)
attempt(3) :- !,
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.
attempt(N) :-
    write('Enter username: '), nl, read(U),
    write('Enter password: '), nl, read(P),
    (   user(U, P)
    ->  write('Login Successful'), nl
    ;   write('Login Unsuccessful'), nl,
        N1 is N + 1,
        attempt(N1)
    ).
