% Facts
human(socrates).

% Rules
mortal(X) :- human(X).

% Query
?- mortal(socrates).
