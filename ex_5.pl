%Data: 13/02/2017
ponto(3,5).
linha(ponto(3,5),ponto(4,6)).
vertical(linha(ponto(_,Y),ponto(_,Y))).
horizontal(linha(ponto(X,_),ponto(X,_))).

%5.1
ultimo([U],U):-!.
ultimo([X|Xs],U):-ultimo(Xs,U).

%5.2
tam([],0):-!.
tam([X|Xs],C):-tam(Xs,R),C is R+1.

%5.3
soma([],0):-!.
soma([X|Xs],S):-soma(Xs,U),S is X+U.

%5.4
max([X],X):-!.
max([X|Xs],X):-max(Xs,U),X>U,!.
max([X|Xs],U):-max(Xs,U),X<U,!.

%5.5
inv([],[]).
inv([X|Xs],R):-inv(Xs,C),append(C,[X],R).

%5.6
sim(L):-inv(L,I),L==I.

%5.7
d(0,zero).
d(1,um).
d(2,dois).
d(3,tres).
d(4,quatro).
d(5,cinco).
d(6,seis).
d(7,sete).
d(8,oito).
d(9,nove).
txt([X],[T]):-d(X,T),!.
txt([X|Xs],R):-d(X,D),txt(Xs,L),append([D],L,R).

%5.8
%a)
estrada(1,a,b).
estrada(5,b,e).
estrada(3,b,c).
estrada(2,a,d).
estrada(4,c,d).
estrada(6,c,f).
estrada(7,d,f).
estrada(8,e,f).
%b)
rota(A,B,R):-estrada(_,A,B),R=[A,B].
rota(A,B,R):-estrada(_,A,C),rota(C,B,S),R=[A,B,C|S].

%5.9
%a)
regular(retangulo(ponto(0,2),ponto(2,2),ponto(0,4),ponto(2,4))).