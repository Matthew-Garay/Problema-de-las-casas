% ============================================================================
% Problema de las Casas - Acertijo de Einstein en Prolog
% Refactorizado: punto de entrada main/0 que resuelve e imprime la solucion,
% codificacion corregida y lineas en blanco reducidas.
% ============================================================================

% ----------------------------------------------------------------------------
% vecino_izq(Lista, Vecino_Izq, Vecino_Der): dos casas adyacentes en ese orden.
% ----------------------------------------------------------------------------
vecino_izq([Vi, Vd | _], Vecino_Izq, Vecino_Der) :-
    (Vi = Vecino_Izq, Vd = Vecino_Der).
vecino_izq([_ | Resto], Vecino_Izq, Vecino_Der) :-
    vecino_izq(Resto, Vecino_Izq, Vecino_Der).

% ----------------------------------------------------------------------------
% vecino(Lista, Info_1, Info_2): dos casas adyacentes en cualquier orden.
% ----------------------------------------------------------------------------
vecino(Lista, Info_1, Info_2) :-
    vecino_izq(Lista, Info_1, Info_2).
vecino(Lista, Info_1, Info_2) :-
    vecino_izq(Lista, Info_2, Info_1).

% ----------------------------------------------------------------------------
% posicasa(Casitas): define la estructura de 5 casas y aplica las 14 pistas.
% ----------------------------------------------------------------------------
posicasa(Casitas) :-
    Casitas = [
        [1, _, _, _, _, _],
        [2, _, _, _, _, _],
        [3, _, _, _, _, _],
        [4, _, _, _, _, _],
        [5, _, _, _, _, _]
    ],

    % 1. El noruego vive en la primera casa.
    member([1, _, noruego, _, _, _], Casitas),
    % 1b. El noruego vive junto a la casa azul.
    vecino(Casitas, [_, _, noruego, _, _, _], [_, azul, _, _, _, _]),

    % 2. Quien vive en la casa del centro toma leche.
    member([3, _, _, leche, _, _], Casitas),

    % 3. El ingles vive en la casa roja.
    member([_, roja, ingles, _, _, _], Casitas),

    % 4. La mascota del sueco es un perro.
    member([_, _, sueco, _, perro, _], Casitas),

    % 5. El danes bebe te.
    member([_, _, danes, te, _, _], Casitas),

    % 6. La casa verde esta a la izquierda de la casa blanca.
    vecino_izq(Casitas, [_, verde, _, _, _, _], [_, blanca, _, _, _, _]),

    % 7. El de la casa verde toma cafe.
    member([_, verde, _, cafe, _, _], Casitas),

    % 8. El que fuma PallMall cría pájaros.
    member([_, _, _, _, pajaros, pallmall], Casitas),

    % 9. El de la casa amarilla fuma Dunhill.
    member([_, amarilla, _, _, _, dunhill], Casitas),

    % 10. El que fuma Blend vive junto al que tiene gatos.
    vecino(Casitas, [_, _, _, _, gatos, _], [_, _, _, _, _, blend]),

    % 11. El que tiene caballos vive junto al que fuma Dunhill.
    vecino(Casitas, [_, _, _, _, caballos, _], [_, _, _, _, _, dunhill]),

    % 12. El que fuma BlueMaster bebe cerveza.
    member([_, _, _, cerveza, _, bluemaster], Casitas),

    % 13. El aleman fuma Prince.
    member([_, _, aleman, _, _, prince], Casitas),

    % 14. El que fuma Blend tiene un vecino que bebe agua.
    vecino(Casitas, [_, _, _, _, _, blend], [_, _, _, agua, _, _]),
    member([_, _, _, _, peces, _], Casitas),
    member([_, _, _, agua, _, _], Casitas).

% ----------------------------------------------------------------------------
% Consultas sobre la solucion encontrada.
% ----------------------------------------------------------------------------
color(Persona, Color) :-
    posicasa(Casitas),
    member([_, Color, Persona, _, _, _], Casitas).

bebida(Persona, Bebida) :-
    posicasa(Casitas),
    member([_, _, Persona, Bebida, _, _], Casitas).

fuma(Persona, Cigarro) :-
    posicasa(Casitas),
    member([_, _, Persona, _, _, Cigarro], Casitas).

mascota(Persona, Mascota) :-
    posicasa(Casitas),
    member([_, _, Persona, _, Mascota, _], Casitas).

numero(Persona, Numero) :-
    posicasa(Casitas),
    member([Numero, _, Persona, _, _, _], Casitas).

% ----------------------------------------------------------------------------
% Punto de entrada principal: resuelve e imprime la solucion completa.
% ----------------------------------------------------------------------------
main :-
    posicasa(Casitas),
    write('=== Solucion del Acertijo de Einstein ==='), nl, nl,
    escribir_fila(Casitas),
    nl,
    write('Resumen:'). nl,
    color(ingles, C), write('Ingles: '), write(C), nl,
    color(sueco, C), write('Sueco: '), write(C), nl,
    color(danes, C), write('Danes: '), write(C), nl,
    color(aleman, C), write('Aleman: '), write(C), nl,
    color(noruego, C), write('Noruego: '), write(C), nl,
    nl,
    bebida(ingles, B), write('Ingles bebe: '), write(B), nl,
    bebida(sueco, B), write('Sueco bebe: '), write(B), nl,
    bebida(danes, B), write('Danes bebe: '), write(B), nl,
    bebida(aleman, B), write('Aleman bebe: '), write(B), nl,
    bebida(noruego, B), write('Noruego bebe: '), write(B), nl,
    nl,
    mascota(ingles, M), write('Ingles tiene: '), write(M), nl,
    mascota(sueco, M), write('Sueco tiene: '), write(M), nl,
    mascota(danes, M), write('Danes tiene: '), write(M), nl,
    mascota(aleman, M), write('Aleman tiene: '), write(M), nl,
    mascota(noruego, M), write('Noruego tiene: '), write(M), nl,
    nl,
    write('Quien posee los peces: '),
    mascota(Quien, peces),
    write(Quien), nl.

% ----------------------------------------------------------------------------
% Imprime una fila formateada de las 5 casas.
% ----------------------------------------------------------------------------
escribir_fila([]).
escribir_fila([Casa | Resto]) :-
    [N, Color, Pais, Bebida, Mascota, Cigarro] = Casa,
    write('  Casa '), write(N), write(': '),
    write(Color), write(', '), write(Pais), write(', '),
    write(Bebida), write(', '), write(Mascota), write(', '), write(Cigarro),
    nl,
    escribir_fila(Resto).