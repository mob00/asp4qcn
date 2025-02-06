% ABDUCIBLE HEALTH
{ab((FROM,TO))} :- edge((FROM,TO)).
#minimize{1,E: ab(E)}.
#show ab/1.