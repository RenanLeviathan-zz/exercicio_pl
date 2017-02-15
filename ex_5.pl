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
max([X|Xs],X):-max(Xs,U),X>=U,!.
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
rota(A,B,[R]):-estrada(R,A,B).
rota(A,B,[R|R1]):-estrada(R,A,C),rota(C,B,R1).

%5.9
%a)
r3(p(0,0),p(1,0),p(1,4),p(0,3)).
regular([p(X,Y),p(X1,Y),p(X1,Y1),p(X,Y1)]).
quadrado([p(X,Y),p(X1,Y1),p(X2,Y2),p(X3,Y3)]):-regular([p(X,Y),p(X1,Y1),p(X2,Y2),p(X3,Y3)]),abs(X-X1)=abs(Y-Y3).