prologues := 2;
input boxes ;
input geometriesyr16.mp;
input courbescp13.mp;
%input mes_definitions_TeX.tex;
input macrosrey.mp;


verbatimtex
%&latex
\documentclass{article}
\usepackage{typearea}
\usepackage[latin1]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{lmodern}
\usepackage[upright]{fourier}
\usepackage[frenchb]{babel}
\usepackage{amsthm,amsmath,amssymb,amsfonts}
\usepackage{mathrsfs}

\begin{document}
etex


%positions classiques :
% llft : bas-gauche     lft : gauche
% ulft : haut-gauche    top : haut
% urt : haut-droite     rt : droite
% lrt : bas-droite      bot : bas

u:=1cm;
%1
%%%%%%%%%%%%%%%%%%%%%%%%%
%  cube en persp1       %
%%%%%%%%%%%%%%%%%%%%%%%%%
figure(-u,-u,5u,5u);
pair A,B,C,D,E,F,G,H;
A=(0,0);
B=(2u,0);
C=(2u,2u);
D=C+A-B;
E=(.5u,-.5u);
F=E+B-A;
G=E+C-A;
H=E+D-A;
trace A--B--C--D--A;
trace G--H--D dashed evenly;
trace C--G--F--B;
trace A--E--F;
trace E--H dashed evenly;
fin;

%2
%%%%%%%%%%%%%%%%%%%%%%%%%
%  cube en persp2       %
%%%%%%%%%%%%%%%%%%%%%%%%%
figure(-u,-u,5u,5u);
pair A,B,C,D,E,F,G,H;
A=(0,0);
B=(2u,0);
D=(0,2u);
C=(2u,2u);
E=(.7u,.5u);
F=E+B-A;
G=E+C-A;
H=E+D-A;
trace A--B--C--D--A;
trace B--F--G--H--D;
trace C--G;
trace A--E--F dashed evenly;
trace E--H dashed evenly;
fin;

%3
%%%%%%%%%%%%%%%%%%%%%%%%%
%  cube en persp3       %
%%%%%%%%%%%%%%%%%%%%%%%%%
figure(-u,-u,5u,5u);
pair A,B,C,D,E,F,G,H;
A=(0,0);
B=(2u,0);
D=(0,2u);
C=(2u,2u);
E=(-.7u,.5u);
F=E+B-A;
G=E+C-A;
H=E+D-A;
trace A--B--C--D--A--E--H--D;
trace C--G--H;
trace B--F--G dashed evenly;
trace E--F dashed evenly;

fin;


%4
%%%%%%%%%%%%%%%%%%%%%%%%
% Axiomes d'Euclide
%%%%%%%%%%%%%%%%%%%%%%%%
figure(-0.5u,-0.5u,5u,3.5u);%pavé droit
pair A,B,C,D,E,F,G,H,I,J;
A=(0,0);
B=(3u,0);
C=(4u,.7u);
D=C+A-B;
E=A+(0,2u);
F=B+(0,2u);
G=C+(0,2u);
H=D+(0,2u);
I=.5(A+B);
J=.5(G+H);

trace (u,7u)--(0,7u);%% ?????
trace E--A--B--C--G--H--E--F--G;
trace F--B;
trace A--D--H dashed evenly;
trace D--C dashed evenly;

nomme.lft(A);
nomme.lft(E);
nomme.ulft(H);
nomme.lft(D);
nomme.rt(G);
nomme.rt(C);
nomme.lrt(F);
nomme.rt(B);
marque_p:="croix";
nomme.bot(I);
nomme.top(J);
marque_p:="";
fin;

%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Exemple csq orthogonalité
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(-0.5u,-0.5u,5u,3.5u);%pavé droit
pair A,B,C,D,E,F,G,H,I,J,K;
A=(0,0);
B=(3u,0);
C=(4u,.7u);
D=C+A-B;
E=A+(0,2u);
F=B+(0,2u);
G=C+(0,2u);
H=D+(0,2u);
I=.5(A+B);
J=.5(G+H);
K=.5(E+F);

trace (u,7u)--(0,7u);
trace E--A--B--C--G--H--E--F--G;
trace F--B;
trace A--D--H dashed evenly;
trace D--C dashed evenly;

nomme.lft(A);
nomme.lft(E);
nomme.ulft(H);
nomme.lft(D);
nomme.rt(G);
nomme.rt(C);
nomme.lrt(F);
nomme.rt(B);
marque_p:="croix";
nomme.bot(I);
nomme.top(J);
nomme.top(K);
fin;


%6
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Déf orthogonalité de 2 dtes   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(-u,-2u,9u,4u);
pair A,B,C,D,E,F,G,H,I,J,K,L,v;
A=(-u,0);
B=(6u,0);
D=(2u,3u);
C=D+B-A;
v=(u,2u);
E=(3u,2u);
trace A--B--C--D--A withcolor red withpen pencircle scaled 1pt;
marque_p:="croix";
pointe(E);
trace E--(E+2v) withcolor blue withpen pencircle scaled 1pt;
F-E=whatever*v;
F-A=whatever*(B-A);
trace E--F withcolor blue dashed evenly withpen pencircle scaled 1pt;
trace F--(E-2v) withcolor blue withpen pencircle scaled 1pt;
label.rt(btex $d_2$ etex,F-.5*v) withcolor blue;

G=(5u,u);
H=(7u,1.5u);
I-G=whatever*(G-H);
I-A=whatever*(B-A);
J-G=whatever*(G-H);
J-B=whatever*(B-C);

trace I--J withpen pencircle scaled 1pt withcolor red;
label.top(btex $d_1$ etex,I) withcolor red;

K-E=whatever*(G-H);
K-A=whatever*(A-D);
L-E=whatever*(G-H);
L-D=whatever*(D-C);

trace K--L;
label.top(btex $\Delta$ etex,L);

% angle droit :
trace (E+.25v)--(E+.25v+.2*(H-G))--(E+.2*(H-G));


fin;

%7
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Def droite orthog plan              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(-u,-2u,9u,4u);
pair A,B,C,D,E,F,G,H,I,J,K,L,v;
A=(-u,0);
B=(6u,0);
D=(2u,3u);
C=D+B-A;
v=(0,2u);
E=(3u,2u);
trace A--B--C--D--A withcolor red withpen pencircle scaled 1pt;
marque_p:="croix";
pointe(E);
trace E--(E+2v) withcolor blue withpen pencircle scaled 1pt;
F-E=whatever*v;
F-A=whatever*(B-A);
trace E--F withcolor blue dashed evenly withpen pencircle scaled 1pt;
trace F--(E-2v) withcolor blue withpen pencircle scaled 1pt;
label.rt(btex $d$ etex,F-.5*v) withcolor blue;

G=(4u,2.5u);

K-E=whatever*(G-E);
K-A=whatever*(A-D);
L-E=whatever*(G-E);
L-D=whatever*(D-C);

trace K--L;

% angle droit :
trace (E+.25v)--(E+.25v+.4*(G-E))--(E+.4*(G-E));

H=(4u,1.5u);
I-E=whatever*(E-H);
I-A=whatever*(D-A);
J-E=whatever*(E-H);
J-B=whatever*(B-C);

trace I--J;
% angle droit :
trace (E+.15v)--(E+.15v+.3*(E-H))--(E+.3*(E-H));

fin;


%8
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Propriétés plans et dtes // perp (2 figures) %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%figure 1
figure(-u,-5u,9u,7u);
pair A,B,C,D,E,F,G,H,I,J,K,L,v;
A=(-u,0);
B=(6u,0);
D=(2u,4u);
C=D+B-A;
v=(0,2u);
E=A+v;
F=B+v;
G=C+v;
H=D+v;
I-A=whatever*(D-A);
I-E=whatever*(F-E);
J-F=whatever*(F-G);
J-C=whatever*(C-D);
trace I--A--B--C--J withcolor blue withpen pencircle scaled 1pt;
trace J--D--I withcolor blue dashed evenly withpen pencircle scaled 1pt;
trace E--F--G--H--E withcolor blue withpen pencircle scaled 1pt;
K=(2u,3u);
L=(2u,u);
marque_p:="croix";
pointe(K);
pointe(L);
trace K--(4K-3L) withpen pencircle scaled 1pt withcolor red;
trace K--(2u,2u) withpen pencircle scaled 1pt withcolor red dashed evenly;
trace (2u,2u)--L withpen pencircle scaled 1pt withcolor red;
trace L--(2u,0) withpen pencircle scaled 1pt withcolor red dashed evenly;
trace (2u,0)--(2u,-2u) withpen pencircle scaled 1pt withcolor red;
trace (L+(0,.5u))--(L+(.5u,.5u))--(L+(.5u,0));
trace (K+(0,.5u))--(K+(.5u,.5u))--(K+(.5u,0));
marque_p:="";

fin;


%9
%%%%% figure 2
figure(-u,-5u,9u,7u);
pair A,B,C,D,K,L;
A=(-u,0);
B=(6u,0);
D=(2u,4u);
C=D+B-A;


trace A--B--C--D--A withcolor blue withpen pencircle scaled 1pt;

K=(2u,u);
L=(4u,3u);
marque_p:="croix";
pointe(K);
pointe(L);
% droite 1
trace K--(2u,5u) withpen pencircle scaled 1pt withcolor red;
trace K--(2u,0) withpen pencircle scaled 1pt withcolor red dashed evenly;
trace (2u,0)--(2u,-3u) withpen pencircle scaled 1pt withcolor red;
% droite 2
trace L--(4u,6u) withpen pencircle scaled 1pt withcolor red;
trace L--(4u,0) withpen pencircle scaled 1pt withcolor red dashed evenly;
trace (4u,0)--(4u,-2u) withpen pencircle scaled 1pt withcolor red;
trace (L+(0,.5u))--(L+(.5u,.5u))--(L+(.5u,0));
trace (K+(0,.5u))--(K+(.5u,.5u))--(K+(.5u,0));
marque_p:="";
fin;

end
