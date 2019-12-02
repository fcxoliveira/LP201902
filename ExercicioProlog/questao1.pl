% Fatos
amava(carlos, dora).
amava(dora, lia).
amava(lia, lea).
amava(lea, paulo).
amava(paulo, juca).
amava(juca, dora).
amava(dora, carlos).
amava(dora, rita).
amava(rita, dito).
amava(dito, rita).
amava(rita, carlos).
amava(dora, pedro).
amava(pedro, filha).
amava(filha, carlos).
amava(dora, lea).
amava(dora, filha).
amava(dora, juca).
amava(dora, paulo).
amava(dora, dito).

% Regras

rivais(P1, P2):- amava(P1, P3), amava(P2, P3), P1\=P2.

casal(P1, P2):- amava(P1, P2), amava(P2, P1), P1 @< P2.

% a) amava(carlos, AMAVA).
% b) rivais(P1, P2).
% c) casal(P1, P2).
		