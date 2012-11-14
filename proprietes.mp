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


%%%%%%%%%%%%%%%%%%%%
% theoreme : si 2 dtes secantes de P sont // à
% 2 dtes secantes de Q alors P//Q
%%%%%%%%%%%%%%%%%%%%
figure(-u,-5u,9.5u,7u);
pair A,B,C,D,E,F,G,H,I,J,v,M,N,P,X,Y,Z,T,Q;
A=(-u,0);
B=(6u,0);
D=(2u,4u);
C=D+B-A;
v=(.5u,2u);
E=A+v;
F=B+v;
G=C+v;
H=D+v;
I-A=whatever*(D-A);
I-E=whatever*(F-E);
J-F=whatever*(F-G);
J-C=whatever*(C-D);
% Tracé des deux plans
trace I--A--B--C--J withcolor red withpen pencircle scaled 1pt;
trace J--D--I withcolor red dashed evenly withpen pencircle scaled 1pt;
trace E--F--G--H--E withcolor blue withpen pencircle scaled 1pt;
% deux droites sécantes en P :
P=(4u,3u);
M=(6u,4.5u);
N=(2u,3u);
X-P=whatever*(P-M);
X-G=whatever*(G-H);
Y-P=whatever*(P-M);
Y-E=whatever*(E-F);
Z-P=whatever*(P-N);
Z-E=whatever*(E-H);
T-P=whatever*(P-N);
T-F=whatever*(F-G);
trace X--Y withcolor blue;
trace Z--T withcolor blue;
Q-(P-v)=whatever*(X-Y);
Q-E=whatever*(E-F);
trace (Y-v)--Q withcolor red;
trace Q--(X-v) withcolor red dashed evenly;
trace (Z-v)--(T-v) withcolor red;


fin;


%%%%%%%%%%%%%%%%%%%%
% theoreme : si d et delta sont // alors
% d est // à tout plan contenant delta
%%%%%%%%%%%%%%%%%%%%
figure(-u,-3u,9u,5.5u);
pair A,B,C,D,E,F,G,H,I,J,K,L,M,N,v;
A=(-u,0);
B=(6u,0);
D=(2u,3u);
C=D+B-A;
v=(-u,0);

E=(0,2.5u);
F=(5u,-3u);
G=F+D-A;
H=E+D-A;

I-A=whatever*(B-A);
I-E=whatever*(E-F);
J-C=whatever*(C-D);
J-G=whatever*(G-H);

trace droite(I,J);

K-A=whatever*(A-D);
K-E=whatever*(E-F);
L-B=whatever*(B-C);
L-G=whatever*(G-H);

trace J--H--E--F--G--L withcolor red withpen pencircle scaled 1pt;
trace L--J withcolor red withpen pencircle scaled 1pt dashed evenly;

trace K--A--B--C--J withcolor blue withpen pencircle scaled 1pt;
trace J--D--K withcolor blue withpen pencircle scaled 1pt dashed evenly;

M-(I+v)=whatever*(I-J);
M-A=whatever*(A-B);
N-(I+v)=whatever*(I-J);
N-G=whatever*(G-H);

trace M--N dashed evenly;
trace M--(M+I-J);
trace N--(N+J-I);

label.urt(btex $P$ etex,A+(.5u,0)) withcolor blue;
label.top(btex $Q$ etex,F) withcolor red;
label.bot(btex $\delta$ etex,I);
label.ulft(btex $d$ etex, M+.5*(I-J));

fin;



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% theoreme : si P et Q sécants suivant delta. d1 // d2 avec
% d1 \in P et d2 \in Q alors delta // d1 et d2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(-u,-3u,9u,5.5u);
pair A,B,C,D,E,F,G,H,I,J,K,L,M,N,v;
A=(-u,0);
B=(6u,0);
D=(2u,3u);
C=D+B-A;
v=(-u,0);

E=(0,2.5u);
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

M=E+.2*(F-E);
N=A+.7*(B-A);

trace M--(M+J-I) withcolor red;
trace N--(N+J-I) withcolor blue;

label.urt(btex $P$ etex,A+(.5u,0)) withcolor blue;
label.top(btex $Q$ etex,F) withcolor red;
label.bot(btex $\delta$ etex,I);
label.rt(btex $d_2$ etex, M+.5*(u,0)) withcolor red;
label.rt(btex $d_1$ etex, N+.5*(u,0)) withcolor blue;

fin;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% meme chose ss forme theoreme du toit %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(-u,-u,5u,5u);
pair A,B,C,D,E,F,G,H,I,J;
A=(0,0);
B=(4u,0);
D=(0,2u);
C=B+D-A;
E=(.7u,.5u);
F=E+B-A;
G=E+C-A;
H=E+D-A;
trace A--B--C--D--A;
trace B--F--G;
trace G--H--D dashed evenly;
trace C--G;
trace A--E--F dashed evenly;
trace E--H dashed evenly;
I=.5*(D+H)+(0,2u);
J=I+B-A;
trace I--J--G withcolor blue;
trace G--H--I withcolor blue dashed evenly;
trace D--C--J--I--D withcolor red;

fin;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% theoreme : si P1 et P2 st // et Q sécant avec P1 suivant d1 %
% alors Q coupe P2 suivant d2 et d1//d2                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(-2u,-4u,10u,5.5u);
pair A,B,C,D,E,F,G,H,I,J,K,L,M,N,X,Y,Z,T,P,Q,R,v;
A=(-u,0);
B=(6u,0);
D=(2u,3u);
C=D+B-A;

E=(0,2.5u);
F=(5u,-4u);
G=F+D-A;
H=E+D-A;

v=(.5u,-2u);
X=A+v;
Y=X+B-A;
Z=Y+C-B;
T=X+C-B;

I-A=whatever*(B-A);
I-E=whatever*(E-F);
J-C=whatever*(C-D);
J-G=whatever*(G-H);

trace I--J;

K-A=whatever*(A-D);
K-E=whatever*(E-F);
L-Y=whatever*(Y-Z);
L-G=whatever*(G-H);

trace J--H--E--F--G--L withcolor red withpen pencircle scaled 1pt;
trace L--J withcolor red withpen pencircle scaled 1pt dashed evenly;

trace K--A--B--C--J withcolor blue withpen pencircle scaled 1pt;
trace J--D--K withcolor blue withpen pencircle scaled 1pt dashed evenly;

M-X=whatever*(T-X);
M-A=whatever*(A-B);
N-Z=whatever*(Z-T);
N-B=whatever*(B-C);

trace M--X--Y--Z--N withcolor green withpen pencircle scaled 1pt;
trace N--T--M withcolor green withpen pencircle scaled 1pt dashed evenly;

P-X=whatever*(X-Y);
P-E=xhatever*(E-F);
Q-Z=whatever*(Z-T);
Q-G=whatever*(G-H);
R-P=whatever*(Q-P);
R-A=whatever*(A-B);

trace P--R;
trace R--Q dashed evenly;

label.lft(btex $P_1$ etex,A) withcolor blue;
label.lft(btex $P_2$ etex,X) withcolor green;
label.lft(btex $Q$ etex,E) withcolor red;
label.urt(btex $d_1$ etex,J);
label.llft(btex $d_2$ etex,P);
fin;



end