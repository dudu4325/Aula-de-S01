% Fatos: Componentes (nome, energia_mw, categoria)
componente(reator_fusao, 0, fundamental). % Produz, não consome
componente(propulsor_ion, 8, propulsao).
componente(dobra_espacial, 10, propulsao).
componente(escudo_plasma, 6, defesa).
componente(canhao_laser, 4, combate).
componente(torpedo_foton, 6, combate).
componente(ia_navegação, 4, sistemas).
componente(scanner_deep_space, 6, sistemas).
componente(modulo_suporte_vida, 8, sistemas).
componente(cloaking_device, 6, defesa).
componente(android_reparo, 4, suporte).
componente(estacao_pesquisa, 10, pesquisa).

% Fatos: Dependências de Engenharia (componente_alvo, peça_necessaria)
precisa(propulsor_ion, reator_fusao).
precisa(dobra_espacial, propulsor_ion).
precisa(escudo_plasma, reator_fusao).
precisa(ia_navegação, propulsor_ion).
precisa(ia_navegação, modulo_suporte_vida).
precisa(canhao_laser, ia_navegação).
precisa(canhao_laser, propulsor_ion).
precisa(torpedo_foton, ia_navegação).
precisa(scanner_deep_space, modulo_suporte_vida).
precisa(android_reparo, modulo_suporte_vida).
precisa(estacao_pesquisa, scanner_deep_space).
precisa(estacao_pesquisa, android_reparo).

% Fatos: Inventário dos Hangares (hangar, peca_disponivel)
possui(hangar_alpha, reator_fusao).
possui(hangar_alpha, modulo_suporte_vida).
possui(hangar_beta, reator_fusao).
possui(hangar_beta, propulsor_ion).
possui(hangar_beta, modulo_suporte_vida).
possui(hangar_gamma, reator_fusao).
possui(hangar_gamma, cloaking_device).
possui(hangar_gamma, scanner_deep_space).
possui(hangar_delta, modulo_suporte_vida).
possui(hangar_delta, android_reparo).
possui(hangar_delta, scanner_deep_space).
possui(hangar_epsilon, propulsor_ion).
possui(hangar_epsilon, dobra_espacial).
possui(hangar_epsilon, cloaking_device).
possui(hangar_epsilon, canhao_laser).

% Exercício 1:
peca_critica(P) :-
    componente(P, X, _),
    X > 5,
    precisa(P1, P),
    precisa(P2, P),
    P1 \= P2.
% Query 1:
% componente(P, 6, sistemas), \+ peca_critica(P).
% P = scanner_deep_space

% Exercício 2:
hangar_combate(H) :-
    componente(P1, _, combate),
    componente(P2, _, combate),
    possui(H, P1),
    possui(H, P2),
    P1 \= P2.

falta_energia(H) :-
    \+ (componente(P1, _, propulsao), possui(H, P1)).

% Query 2:
% hangar_combate(H), falta_energia(H).
% false


% Exercício 3:
item_faltante(Hangar, Peca) :-
    precisa(_, Peca),
    \+ possui(Hangar, Peca).

pode_montar(Hangar, Componente) :-
    componente(Componente, _, Categoria),
    Categoria \= fundamental,
    \+ (precisa(Componente, Peca), item_faltante(Hangar, Peca)).
% Query 3.1:
% pode_montar(hangar_beta, C)
% C = propulsor_ion
% C = dobra_espacial
% C = escudo_plasma
% C = ia_navegação
% C = scanner_deep_space
% C = modulo_suporte_vida
% C = cloaking_device
% C = android_reparo

% Query 3.2:
% pode_montar(hangar_gamma, ia_navegação)
% false


% Exercício 4:
peça_raiz(P) :-
    componente(P, _, _),
    \+ precisa(P, __).

peça_final(P) :-
    componente(P, _, _),
    \+ precisa(_, P).
% Query 4:
% peça_raiz(P), \+ componente(P, _, propulsao)
% P = reator_fusao
% P = modulo_suporte_vida
% P = cloaking_device

