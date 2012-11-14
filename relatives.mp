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

%%%%%%%%%%%%%%%%%%%%%%%%
% plans sécants
%%%%%%%%%%%%%%%%%%%%%%%
figure(-u,-5u,9u,7u);%1
pair A,B,C,D,E,F,G,H,I,J,K,L,v;
A=(-u,0);
B=(6u,0);
D=(2u,3u);
C=D+B-A;
v=(u,2u);

E=(0,3u);
F=(5u,-3u);
G=F+D-A;
H=E+D-A;

I-A=whatever*(B-A);
I-E=whatever*(E-F);
J-C=whatever*(C-D);
J-G=whatever*(G-H);

trace I--J;

K-A=whatever*(A-D);
K-E=whatever*(E-F);
L-B=whatever*(B-C);
L-G=whatever*(G-H);

trace J--H--E--F--G--L withcolor red withpen pencircle scaled 1pt;
trace L--J withcolor red withpen pencircle scaled 1pt dashed evenly;

trace K--A--B--C--J withcolor blue withpen pencircle scaled 1pt;
trace J--D--K withcolor blue withpen pencircle scaled 1pt dashed evenly;
fin;

%%%%%%%%%%%%%%%%%%%%
% plans parallèles
%%%%%%%%%%%%%%%%%%%%
figure(-u,-5u,9u,7u);%2
pair A,B,C,D,E,F,G,H,I,J,v;
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
trace I--A--B--C--J withcolor red withpen pencircle scaled 1pt;
trace J--D--I withcolor red dashed evenly withpen pencircle scaled 1pt;
trace E--F--G--H--E withcolor blue withpen pencircle scaled 1pt;
fin;

%%%%%%%%%%%%%%%%%%%%
% plan et droite sécants
%%%%%%%%%%%%%%%%%%%%
figure(-u,-5u,9u,7u);%3
pair A,B,C,D,E,F,G,H,I,J,v;
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
fin;


%%%%%%%%%%%%%%%%%%%%%
% plan et droite parallèles
%%%%%%%%%%%%%%%%%%%%%
figure(-u,-5u,9u,7u);%4
pair A,B,C,D,E,F,G,H,I,J,v;
A=(-u,0);
B=(6u,0);
D=(2u,3u);
C=D+B-A;
v=(u,2u);
E=(4.5u,2.5u);
F=(2.5u,3.5u);
trace A--B--C--D--A withcolor red withpen pencircle scaled 1pt;
marque_p:="croix";
pointe(E);
pointe(F);
trace droite(E,F) withcolor blue withpen pencircle scaled 1pt;
G=E-(0,u);
H=F-(0,u);
I-G=whatever*(G-H);
I-A=whatever*(D-A);
J-G=whatever*(G-H);
J-B=whatever*(B-C);
pointe(G);
pointe(H);
trace I--J withcolor blue dashed evenly withpen pencircle scaled 1pt;
trace G--E dashed evenly withpen pencircle scaled 1pt;
trace H--F dashed evenly withpen pencircle scaled 1pt;
trace(u,-10u)--(2u,-10u);
fin;


end
