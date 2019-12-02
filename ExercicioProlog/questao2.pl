relacao(deus, amor).
relacao(amor, cego).
relacao(steve_wonder,cego).

compara(P1, P2) :- relacao(P1, P2).
compara(P1, P2):- relacao(P1, P3), compara(P3, P2).

dieta(verdura).
dieta(peixe).
elefanteCome(verdura).
elefanteFisico(gordo).
baleiaCome(peixe).
baleiaFisico(gordo).

qualDieta(P1, P2) :- (dieta(P1), elefanteCome(P1), elefanteFisico(P2));(dieta(P1), baleiaCome(P1), baleiaFisico(P2)).

maisQueijo(mais_queijo).
menosQueijo(menos_queijo).
maisBuracos(mais_buracos).

quantoMais(queijo, P):-
    quantoMais(buracos, P).
quantoMais(buracos, P):-
    menosQueijo(P).

% a) compara(steve_wonder, deus).
% Falso, se P1 é P2 e P2 é P3, logo P1 também é P3. steve é cego, mas não significa que ele é deus.
% b) qualDieta(COMIDA, PESO).
% Dependendo da comida se indica o peso
% c) quantoMais(queijo, menos_queijo). Verdadeiro
% A afirmação de mais queijo, leva a afirmar que há mais buracos e quando existe mais buracos, existe menos queijo.