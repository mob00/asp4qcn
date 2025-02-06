% SATISFY
{relation(FROM,TO,RELATION): baserelation(TYPE,RELATION)} = 1:- edge((FROM,TO)).

% ALGEBRAIC CLOSURE
:- relation(FROM,OVER,R1), relation(OVER,TO,R2), relation(FROM,TO,R3), not composition(TYPE,R1,R2,R3), baserelation(TYPE,_).

% CONSTRAINTS AND SUSPENSION
:- relation(FROM,TO,REL), not constraint(FROM,TO,REL), constraint(FROM,TO,_), not ab((FROM,TO)).