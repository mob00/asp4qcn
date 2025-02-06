% CONSTRUCT QCN
edge((FROM,TO)) :- constraint(FROM,TO,_).
node(NODE) :- edge((_,NODE)).
node(NODE) :- edge((NODE,_)).

% FULLY CONNECTED
edge((FROM,TO)) :- node(FROM), node(TO), FROM < TO.