vecino_izq([Vi, Vd | _], Vecino_Izq, Vecino_Der) :-
    (Vi = Vecino_Izq, Vd = Vecino_Der);
    vecino_izq([Vd | _], Vecino_Izq, Vecino_Der).

vecino(Lista, Info_1, Info_2) :-
    vecino_izq(Lista, Info_1, Info_2);
    vecino_izq(Lista, Info_2, Info_1).


posicasa(Casitas):-
Casitas=[
[1,_,_,_,_,_],
[2,_,_,_,_,_],
[3,_,_,_,_,_],
[4,_,_,_,_,_],
[5,_,_,_,_,_]],

% 1. El noruego vive en la primera casa.
member([1,_,noruego,_,_,_], Casitas),
% 1. ... junto a la casa azul.
vecino(Casitas, [_, _, noruego, _, _, _], [_, azul, _, _, _, _]),

% 2. El que vive en la casa del centro toma leche.
member([3,_,_,leche,_,_], Casitas),

% 3. El inglés vive en la casa roja.
member([_,roja,ingles,_,_,_],Casitas),

% 4. La mascota del Sueco es un perro.
member([_,_,sueco,_,perro,_],Casitas),

% 5. El Danés bebe té.
member([_,_,danes,te,_,_],Casitas),

% 6. La casa verde es a la izquierda de la casa blanca.
vecino_izq(Casitas,[_,verde,_,_,_,_],[_,blanca,_,_,_,_]),

% 7. El de la casa verde toma café.
member([_,verde,_,cafe,_,_],Casitas),

% 8. El que fuma PallMall cría pájaros.
member([_,_,_,_,pajaros,pallmall],Casitas),

% 9. El de la casa amarilla fuma Dunhill.
member([_,amarilla,_,_,_,dunhill],Casitas),

% 10. El que fuma Blend vive junto al que tiene gatos.
vecino(Casitas,[_,_,_,_,gatos,_],[_,_,_,_,_,blend]),

% 11. El que tiene caballos vive junto al que fuma Dunhill.
vecino(Casitas,[_,_,_,_,caballos,_],[_,_,_,_,_,dunhill]),

% 12. El que fuma BlueMaster bebe cerveza.
member([_,_,_,cerveza,_,bluemaster],Casitas),

% 13. El alemán fuma Prince.
member([_,_,aleman,_,_,prince],Casitas),

% 14. El que fuma Blend tiene un vecino que bebe agua.
vecino(Casitas,[_,_,_,_,_,blend],[_,_,_,agua,_,_]),
member([_, _, _, _, peces, _], Casitas),
member([_, _, _, agua, _, _], Casitas).

color(Persona,Color):-posicasa(Casitas),
    member([_,Color,Persona,_,_,_],Casitas).

bebida(Persona,Bebida):-posicasa(Casitas),
    member([_,_,Persona,Bebida,_,_],Casitas).

fuma(Persona,Fuma):-posicasa(Casitas),
    member([_,_,Persona,_,_,Fuma],Casitas).

mascota(Persona,Mascota):-posicasa(Casitas),
    member([_,_,Persona,_,Mascota,_],Casitas).

numero(Persona,Numero):-posicasa(Casitas),
    member([Numero,_,Persona,_,_,_],Casitas).
