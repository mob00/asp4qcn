% CONSTRUCT QCN
edge((FROM,TO)) :- constraint(FROM,TO,_).
node(NODE) :- edge((_,NODE)).
node(NODE) :- edge((NODE,_)).

% CHORD IF THERE IS A TRIANGLE
chord((I;K),(K;J)) :- edge((I,J)), edge((I,K)), edge((K,J)). 

% ABDUCIBLE EDGE
{edge((FROM,TO))} :- node(FROM), node(TO), FROM < TO.

% EVERY EDGE MUST BE CHORDAL
:- edge((FROM,TO)), not chord(FROM,TO). 