verbatimtex
%&latex
\documentclass{article}
\usepackage{amsmath}
\newcommand{\vect}[1]{\overrightarrow{#1\rule{0.1em}{0ex}}}
\begin{document}
etex;

beginfig(1)
%caracterisation vectorielle d'un plan
numeric u;
pair t,r;
transform T,S;

u= 1cm;
t=(4u,0u); r=(1u,2.5u);
T = identity shifted t;
S = identity shifted r;

%on place les points du parallèlogramme représentant le plan
z0=(0u,0u);
z1 = z0 transformed T;
z2 = z0 transformed S;
z3 = z0 transformed T transformed S;

%on trace le parallelogramme
draw z0--z2;
draw z2--z3;

%on donne un effet d'epaisseur en changeant l'epaisseur du stylo
pickup pencircle scaled 2pt;
draw z0--z1;
draw z1--z3;

%on rechange l'epaisseur du stylo
pickup pencircle scaled 0.5pt;

%on indique le nom du plan
label.urt(btex $\pi$ etex, z0);%+(0.1,0)*u);

%les vecteurs
z4=(u,u); z5=(3u,0.5u);z6=(2u,1.8u);
draw z4-0.2*(z5-z4)--z5+0.2*(z5-z4);
draw z4-0.2*(z6-z4)--z6+0.2*(z6-z4);

z7= z4 shifted ((0.7*(z5-z4))+(0.9*(z6-z4)));
drawarrow z4--z7;
z8 = z4 shifted (0.7*(z5-z4));
z9 = z4 shifted (0.9*(z6-z4));
draw z7--z8 dashed evenly;
draw z7--z9 dashed evenly;

z10 = z4 shifted (0.3*(z5-z4)); 
z11 = z4 shifted (0.5*(z6-z4));
drawarrow z4--z10;
drawarrow z4--z11;

label.bot(btex $A$ etex, z4-0.15*(z5-z4));
label.bot(btex $B$ etex, z10);
label.lft(btex $C$ etex, z11);
label.rt(btex $M$ etex, z7);

label.bot(btex $x$ etex, z8);
label.lft(btex $y$ etex, z9);


label.rt(btex $y\vect{AC}$ etex, 0.7[z7,z8]);
label.top(btex $x\vect{AB}$ etex, 0.2[z7,z9]);

endfig;





beginfig(2);
%caracterisation vectorielle d'un plan
numeric u;
pair t,r;
transform T,S;

u= 1cm;
t=(4u,0u); r=(1u,2.5u);
T = identity shifted t;
S = identity shifted r;

%on place les points du parallèlogramme représentant le plan
z0=(0u,0u);
z1 = z0 transformed T;
z2 = z0 transformed S;
z3 = z0 transformed T transformed S;

%on trace le parallelogramme
draw z0--z2;
draw z2--z3;

%on donne un effet d'epaisseur en changeant l'epaisseur du stylo
pickup pencircle scaled 2pt;
draw z0--z1;
draw z1--z3;

%on rechange l'epaisseur du stylo
pickup pencircle scaled 0.5pt;

%on indique le nom du plan
label.urt(btex $\pi$ etex, z0+(0.1u,0u));

%les vecteurs
z4=(u,u); z5=(3u,0.5u);z6=(2u,1.8u);
draw z4-0.2*(z5-z4)--z5+0.2*(z5-z4);
draw z4-0.2*(z6-z4)--z6+0.2*(z6-z4);

z7= z4 shifted ((0.7*(z5-z4))+(0.9*(z6-z4)));
drawarrow z4--z7;
z8 = z4 shifted (0.7*(z5-z4));
z9 = z4 shifted (0.9*(z6-z4));
draw z7--z8 dashed evenly;
draw z7--z9 dashed evenly;

z10 = z4 shifted (0.5*(z5-z4)); 
z11 = z4 shifted (0.7*(z6-z4));
drawarrow z4--z10;
drawarrow z4--z11;

label.bot(btex $A$ etex, z4-0.15*(z5-z4));
label.rt(btex $M$ etex, z7);

label.bot(btex $\vect{u}$ etex, 0.5[z10,z4]);
label.lft(btex $\vect{v}$ etex, 0.5[z11,z4]);
endfig;






beginfig(3);
%caracterisation vectorielle d'un plan
numeric u;
pair t,r;
transform T,S;

u= 1cm;
t=(4u,0u); r=(1u,2.5u);
T = identity shifted t;
S = identity shifted r;

%on place les points du parallelogramme représentant le plan
z0=(0u,0u);
z1 = z0 transformed T;
z2 = z0 transformed S;
z3 = z0 transformed T transformed S;

%on trace le parallelogramme
draw z0--z2;
draw z2--z3;

%on donne un effet d'epaisseur en changeant l'epaisseur du stylo
pickup pencircle scaled 2pt;
draw z0--z1;
draw z1--z3;

%on rechange l'epaisseur du stylo
pickup pencircle scaled 0.5pt;

%on indique le nom du plan
label.urt(btex $\pi$ etex, z0+(0.1u,0u));

%les vecteurs
z4=(u,u); z5=(3u,0.5u);z6=(2u,1.8u);

z7= z4 shifted ((0.7*(z5-z4))+(0.9*(z6-z4)));
drawarrow z4--z7;
z8 = z4 shifted (0.7*(z5-z4));
z9 = z4 shifted (0.9*(z6-z4));

drawarrow z4--z8;
drawarrow z4--z9;

label.bot(btex $O$ etex, z4-0.15*(z5-z4));
label.rt(btex $C$ etex, z7);
label.bot(btex $A$ etex, z8);
label.top(btex $B$ etex, z9);

label.bot(btex $\vect{u}$ etex, 0.5[z8,z4]);
label.lft(btex $\vect{v}$ etex, 0.5[z9,z4]);
label.top(btex $\vect{w}$ etex, 0.5[z7,z4]);
endfig;

beginfig(4);
% parallelisme plan et droite
numeric u;
pair t,r;
transform T,S;

u= 1cm;
t=(4u,0u); r=(1u,2u);
T = identity shifted t;
S = identity shifted r;

%plan
z0=(0u,0u);
z1 = z0 transformed T;
z2 = z0 transformed S;
z3 = z0 transformed T transformed S;
draw z0--z2;
draw z2--z3;
pickup pencircle scaled 2pt;
draw z0--z1;
draw z1--z3;
pickup pencircle scaled 0.5pt;
label.urt(btex $\pi$ etex, z0+(0.1u,0u));

%droite dans le plan
z4 = (1u,.5u);
z5 = (4u,1u);
z10= z4 shifted (0.5*(z5-z4));
z11= z4 shifted (0.9*(z5-z4));
label.top(btex $\vect{u}$ etex, 0.5[z10,z11]);
dotlabel.lft(btex $A$ etex, z10);
label.rt(btex $B$ etex, z11);
drawarrow z10--z11;


%la droite en dehors du plan
z6 = (1u,2.5u);
z7 = z6 shifted z5-z4;
draw z6--z7;
z8= z6 shifted (0.2*(z5-z4));
z9= z6 shifted (0.6*(z5-z4));
drawarrow z8--z9;
dotlabel(btex $ $ etex, z8);
label.top(btex $\Delta$ etex, z6);
label.top(btex $\vect{u}$ etex, 0.5[z8,z9]);

endfig;



beginfig(5);
% parallelisme plan et droite
numeric u;
pair t,r;
transform T,S;

u= 1cm;
t=(4u,0u); r=(1u,2u);
T = identity shifted t;
S = identity shifted r;

%plan
z0=(0u,0u);
z1 = z0 transformed T;
z2 = z0 transformed S;
z3 = z0 transformed T transformed S;
draw z0--z2;
draw z2--z3;
pickup pencircle scaled 2pt;
draw z0--z1;
draw z1--z3;
pickup pencircle scaled 0.5pt;
label.urt(btex $\pi$ etex, z0+(0.1u,0u));

%droite dans le plan
z4 = (1u,.5u);
z5 = (4u,1u);
z10= z4 shifted (0.1*(z5-z4));
z11= z4 shifted (0.5*(z5-z4));
drawarrow z10--z11;
dotlabel(btex $ $ etex, z10);
label.top(btex $\vect{u}$ etex, 0.5[z10,z11]);
draw z4--z5;
label.top(btex $d'$ etex, z5);


%la droite en dehors du plan
z6 = (1u,2.5u);
z7 = z6 shifted z5-z4;
draw z6--z7;
z8= z6 shifted (0.4*(z5-z4));
z9= z6 shifted (0.8*(z5-z4));
drawarrow z8--z9;
dotlabel(btex $$ etex, z8);
label.top(btex $\Delta$ etex, z7);
label.top(btex $\vect{u}$ etex, 0.5[z8,z9]);

draw z10--z8 dashed evenly;
draw z11--z9 dashed evenly;
pair v,w;
v=(0.1,0.5)*u;w=(1,-0.4)*u;

drawarrow z10--(z10+v);
drawarrow z10--(z10+w);
%dotlabel(btex $ $ etex, (0.5u,0.5u));

label.lft(btex $\vect{v}$ etex, z10+v);
label.top(btex $\vect{w}$ etex,z10+w);


endfig;




beginfig(6);
% plans paralleles a l'aide de droites secantes
numeric u;
pair t,r;
transform T,S;

u= 1cm;
t=(4u,0u); r=(1u,2u);
T = identity shifted t;
S = identity shifted r;

%premier plan P
z0=(0u,0u);
z1 = z0 transformed T;
z2 = z0 transformed S;
z3 = z0 transformed T transformed S;
draw z0--z2;
draw z2--z3;
pickup pencircle scaled 2pt;
draw z0--z1;
draw z1--z3;
pickup pencircle scaled 0.5pt;
label.urt(btex $\pi$ etex, z0+(0.1u,0u));

%droites secantes
z4 = (2u,1u); z5 =(3.8u,1.5u);drawarrow z4--z5;
z6 = (2u,1u);z7=(3.6u,0.4u);drawarrow z6--z7;
label.top(btex $\vect{u}$ etex, 0.5[z4,z5]);
label.bot(btex $\vect{v}$ etex, 0.5[z6,z7]);
%label.lft(btex $A$ etex, z4);
%label.rt(btex $B$ etex, z5);
%label.rt(btex $C$ etex, z7);

%deuxieme plan Q
z10=(0u,-2.5u);
z11 = z10 transformed T;
z12 = z10 transformed S;
z13 = z10 transformed T transformed S;
draw z10--z12;
draw z12--z13;
pickup pencircle scaled 2pt;
draw z10--z11;
draw z11--z13;
pickup pencircle scaled 0.5pt;
label.urt(btex $\psi$ etex, z10+(0.1u,0u));

%droites secantes
z14 = (2u,-1.5u); z15 =(3.8u,-1.5u);drawarrow z14--z15;
z16 = (2u,-1.5u);z17=(1u,-2u);drawarrow z16--z17;
label.top(btex $\vect{u}'$ etex, 0.5[z14,z15]);
label.bot(btex $\vect{v}'$ etex, 0.5[z16,z17]);
%label.top(btex $A'$ etex, z14);
%label.rt(btex $B'$ etex, z15);
%label.bot(btex $C'$ etex, z17);

endfig;


beginfig(7);
%repere cartesien dans l'espace
numeric u;
pair t,s,q;
u = 1cm;

%definitions de l'origine et des vecteurs de base
t=(2u,0u);
s=(0u,2u);
q=(-1u,-1.5u);
z0 = (0,0); 
z1= z0 shifted t;
z2 = z0  shifted s;
z3 = z0  shifted q;

%trace de l'origine et des vecteurs de base
dotlabel.lft(btex $O$ etex, z0);
label.bot(btex $\vect{\jmath}$ etex, z1);
label.lft(btex $\vect{\imath}$ etex, z3);
label.lft(btex $\vect{k}$ etex, z2);

%trace des axes
drawarrow z0--z1 ; 
drawarrow z0--z2 ;
drawarrow z0--z3 ;

endfig;


beginfig(8);
% coordonnées d'un point dans un repere de l'espace
numeric u;
pair t,s,q;
u = 1cm;

%definitions de l'origine et des vecteurs de base
t=(1u,0u);
s=(0u,1u);
q=(-0.5u,-0.5u);
z0 = (0,0); 
z1= z0 shifted t;
z2 = z0  shifted s;
z3 = z0  shifted q;

%trace de l'origine et des vecteurs de base
dotlabel.lft(btex $O$ etex, z0);
label.bot(btex $\vect{\jmath}$ etex, z1);
label.lft(btex $\vect{\imath}$ etex, z3);
label.lft(btex $\vect{k}$ etex, z2);

%trace des axes
drawarrow z0--z1 ; 
drawarrow z0--z2 ;
drawarrow z0--z3 ;

%construction du point M
z4 = z0 shifted 4t;
z5 = z0 shifted 4s;
z6 = z0 shifted 4q;
drawarrow z0--z4 ; 
drawarrow z0--z5 ;
drawarrow z0--z6 ; 
z7= 3.5t+2.5q;
label.bot(btex $M'$ etex, z7);
z8 = 3.5t ;
z9 = 2.5q ; 
draw z7--z8 dashed evenly;
draw z7--z9 dashed evenly;
label.top(btex $y$ etex, z8);
label.lft(btex $x$ etex, z9);
z10 = z7 shifted 3s;
draw z7--z10 dashed evenly;
label.rt(btex $M$ etex, z10);
z11 = z10 shifted z0-z7;
draw z11--z10 dashed evenly;
label.lft(btex $z$ etex, z11);
drawarrow z0--z10;
drawarrow z0--z7;

endfig;

beginfig(9);
%repere cartesien orthonormal dans l'espace
numeric u;
pair t,s,q;
u = 1cm;

%definitions de l'origine et des vecteurs de base
t=(2u,0u);
s=(0u,2u);
q=(-1u,-1.5u);
z0 = (0,0); 
z1= z0 shifted t;
z2 = z0  shifted s;
z3 = z0  shifted q;

%trace de l'origine et des vecteurs de base
dotlabel.lft(btex $O$ etex, z0);
label.bot(btex $\vect{\jmath}$ etex, z1);
label.lft(btex $\vect{\imath}$ etex, z3);
label.lft(btex $\vect{k}$ etex, z2);

%trace des axes
drawarrow z0--z1 ; 
drawarrow z0--z2 ;
drawarrow z0--z3 ;

%on marque les angles droits
z4=0.1[z0,z1];z5=0.1[z0,z2];
z6= z5 shifted z4-z0;
draw z4--z6;
draw z5--z6;

z14=0.1[z0,z1];z15=0.1[z0,z3];
z16= z15 shifted z14-z0;
draw z14--z16;
draw z15--z16;

z24=0.1[z0,z2];z25=0.1[z0,z3];
z26= z25 shifted z24-z0;
draw z24--z26;
draw z25--z26;

endfig;


beginfig(10);
%illustration du calcul de distance dans un repere orthonormal
numeric u;
pair t,s,q;
u = 1cm;

%definitions de l'origine et des vecteurs de base
t=(1u,0u);
s=(0u,1u);
q=(-0.5u,-0.5u);

%construction de l'origine et des vecteurs de base
z0 = (0u,0u); 
z1= z0 shifted t;
z2 = z0  shifted s;
z3 = z0  shifted q;
dotlabel.lft(btex $O$ etex, z0);
label.bot(btex $\vect{\jmath}$ etex, z1);
label.lft(btex $\vect{\imath}$ etex, z3);
label.lft(btex $\vect{k}$ etex, z2);

%trace des axes
drawarrow z0--z1 ; 
drawarrow z0--z2 ;
drawarrow z0--z3 ;

%construction du point M et de ses projetes
z4 = z0 shifted 4t;
z5 = z0 shifted 4s;
z6 = z0 shifted 4q;
drawarrow z0--z4 ; 
drawarrow z0--z5 ;
drawarrow z0--z6 ; 
z7= 3.5t+2.5q;
label.bot(btex $m$ etex, z7);
z8 = 3.5t ;
z9 = 2.5q ; 
draw z7--z8 dashed evenly;
draw z7--z9 dashed evenly;
label.top(btex $b$ etex, z8);
label.lft(btex $a$ etex, z9);
z10 = z7 shifted 3s;
draw z7--z10 dashed evenly;
label.rt(btex $M$ etex, z10);
z11 = z10 shifted z0-z7;
draw z11--z10 dashed evenly;
label.lft(btex $c$ etex, z11);
drawarrow z0--z10;
drawarrow z0--z7;

%on marque l'angle droit en m
z12=0.1[z7,z10];z13=0.1[z7,z0];
z14= z13 shifted z12-z7;
draw z12--z14;
draw z13--z14;

endfig;



beginfig(13);
%intersection de deux plans
numeric u;
pair t,r;
transform T,S;
path p[],q[];

u= 1cm;

%Tracé de P
t=(4u,0u); r=(1u,2u);
T = identity shifted t;
S = identity shifted r;

z0=(0u,0u);
z1 = z0 transformed T;
z2 = z0 transformed S;
z3 = z0 transformed T transformed S;

draw z0--z2;
pickup pencircle scaled 2pt;
draw z0--z1;
draw z1--z3;
pickup pencircle scaled 0.5pt;
label.urt(btex $\pi$ etex, z0+(0.1u,0u));

%Tracé de Q
z5 = 0.5[z0,z1];
z6 = z5 transformed S;
z7 = (2.5u,-1u);
z8 = z7 transformed S;
z5 = 0.5[z9,z7];
z10= z9 transformed S;
draw z5--z6; %ici on trace la droite d'intersection
draw z9--z7;
draw z9--z10;
draw z10--z6;
draw z6--z3;
draw z6--z8 dashed evenly;
p1 = z2--z6;
q1= z9--z10;
z11 = p1 intersectionpoint q1;
draw z11--z6 dashed evenly;
draw z2--z11;
p2 = z7--z8;
q2= z5--z1;
z12 = p2 intersectionpoint q2;
draw z12--z8 dashed evenly;
draw z7--z12;
label.rt(btex $\psi$ etex, z9);

%nom de la droite d'intersection
label.rt(btex $\Delta$ etex, 0.5[z5,z6]);
endfig;

beginfig(14);
%representation d'un plan defini par trois points
numeric u;
pair t,r;
transform T,S;

u= 1cm;
t=(4u,0u); r=(1u,2u);
T = identity shifted t;
S = identity shifted r;

%tracé du plan
z0=(0u,0u);
z1 = z0 transformed T;
z2 = z0 transformed S;
z3 = z0 transformed T transformed S;
draw z0--z2;
draw z2--z3;
pickup pencircle scaled 2pt;
draw z0--z1;
draw z1--z3;
pickup pencircle scaled 0.5pt;
label.urt(btex $\pi$ etex, z0+(0.1u,0u));

%tracé des points
dotlabel.top(btex $A$ etex, (2u,1.5u));
dotlabel.top(btex $B$ etex, (1u,.5u));
dotlabel.top(btex $C$ etex, (3u,1u));
endfig;

beginfig(15);
%representation d'un plan defini par deux droites secantes
numeric u;
pair t,r;
transform T,S;

u= 1cm;
t=(4u,0u); r=(1u,2u);
T = identity shifted t;
S = identity shifted r;

%tracé du plan
z0=(0u,0u);
z1 = z0 transformed T;
z2 = z0 transformed S;
z3 = z0 transformed T transformed S;
draw z0--z2;
draw z2--z3;
pickup pencircle scaled 2pt;
draw z0--z1;
draw z1--z3;
pickup pencircle scaled 0.5pt;
label.urt(btex $\pi$ etex, z0+(0.1u,0u));

%tracé des droites
z4 = (0.8u,1u); z5 =(4u,1.5u);draw z4--z5;
z6 = (1u,1.6u);z7=(3.6u,0.4u);draw z6--z7;
label.rt(btex $\Delta$ etex, z5);
label.rt(btex $\Delta'$ etex, z7);
endfig;


beginfig(16);
%representation d'un plan defini par un point et une droite
numeric u;
pair t,r;
transform T,S;

u= 1cm;
t=(4u,0u); r=(1u,2u);
T = identity shifted t;
S = identity shifted r;

%tracé du plan
z0=(0u,0u);
z1 = z0 transformed T;
z2 = z0 transformed S;
z3 = z0 transformed T transformed S;
draw z0--z2;
draw z2--z3;
pickup pencircle scaled 2pt;
draw z0--z1;
draw z1--z3;
pickup pencircle scaled 0.5pt;
label.urt(btex $\pi$ etex, z0+(0.1u,0u));

%le point et la droite
dotlabel.top(btex $A$ etex, (2u,1.5u));
z4 = (1u,.5u);
z5 = (3u,1u);
draw z4--z5;
label.top(btex $\Delta$ etex, z5);
endfig;


beginfig(17);
%representation d'un plan defini par deux droites parallèles
numeric u;
pair t,r;
transform T,S;

u= 1cm;
t=(4u,0u); r=(1u,2u);
T = identity shifted t;
S = identity shifted r;

%tracé du plan
z0=(0u,0u);
z1 = z0 transformed T;
z2 = z0 transformed S;
z3 = z0 transformed T transformed S;
draw z0--z2;
draw z2--z3;
pickup pencircle scaled 2pt;
draw z0--z1;
draw z1--z3;
pickup pencircle scaled 0.5pt;
label.urt(btex $\pi$ etex, z0+(0.1u,0u));

%les deux droites
z4 = (1u,1.3u); z5 =(3u,1.8u);draw z4--z5;
z6 = (1.5u,0.2u);z7 = z6 shifted (z5-z4);draw z6--z7;
label.rt(btex $\Delta$ etex, z5);
label.rt(btex $\Delta'$ etex, z7);
endfig;

beginfig(18);
%representation de deux droites non parallelles et sans point commun
numeric u;
pair t,r;
transform T,S;

u= 1cm;
t=(4u,0u); r=(1u,2u);
T = identity shifted t;
S = identity shifted r;
path p[];

%tracé du plan
z0=(0u,0u);
z1 = z0 transformed T;
z2 = z0 transformed S;
z3 = z0 transformed T transformed S;
draw z0--z2;
draw z2--z3;
pickup pencircle scaled 2pt;
draw z0--z1;
draw z1--z3;
pickup pencircle scaled 0.5pt;
label.urt(btex $\pi$ etex, z0+(0.1u,0u));

%tracé de la droite
z4 = (0.5u,.5u);
z5 = (4u,1u);
draw z4--z5;
label.top(btex $\Delta$ etex, z5);

%tracé du point
z6 = (2u,1.5u);
z7 = (0.2u,1u);
dotlabel.rt(btex $A$ etex, z6);

%on met en place les pointillés
z9 = z6 shifted 2z7;
z10 = z6 shifted -3z7;
p1 = z6--z10;
p2 = z0--z1;
z11 = p1 intersectionpoint p2;
draw z6--z11 dashed evenly;
draw z11--z10;
draw z6--z9;

%le nom de la droite
label.rt(btex $\Delta'$ etex, z10);
endfig;



beginfig(22);
% plans paralleles a l'aide de droites secantes
numeric u;
pair t,r;
transform T,S;

u= 1cm;
t=(4u,0u); r=(1u,2u);
T = identity shifted t;
S = identity shifted r;

%premier plan P
z0=(0u,0u);
z1 = z0 transformed T;
z2 = z0 transformed S;
z3 = z0 transformed T transformed S;
draw z0--z2;
draw z2--z3;
pickup pencircle scaled 2pt;
draw z0--z1;
draw z1--z3;
pickup pencircle scaled 0.5pt;
label.urt(btex $\pi$ etex, z0+(0.1u,0u));

%droites secantes
z4 = (0.8u,1u); z5 =(4u,1.5u);draw z4--z5;
z6 = (1u,1.6u);z7=(3.6u,0.4u);draw z6--z7;
label.rt(btex $\Delta$ etex, z5);
label.rt(btex $\Delta'$ etex, z7);

%deuxieme plan Q
z10=(0u,-2.5u);
z11 = z10 transformed T;
z12 = z10 transformed S;
z13 = z10 transformed T transformed S;
draw z10--z12;
draw z12--z13;
pickup pencircle scaled 2pt;
draw z10--z11;
draw z11--z13;
pickup pencircle scaled 0.5pt;
label.urt(btex $\psi$ etex, z10+(0.1u,0u));

%droites secantes
z14 = (0.8u,-1.5u); z15 =(4u,-1u);draw z14--z15;
z16 = (1u,-0.9u);z17=(3.6u,-2.1u);draw z16--z17;
label.rt(btex $\Delta_{1}$ etex, z15);
label.rt(btex $\Delta'_{1}$ etex, z17);
endfig;

beginfig(23);
% parallelisme plan et droite
numeric u;
pair t,r;
transform T,S;

u= 1cm;
t=(4u,0u); r=(1u,2u);
T = identity shifted t;
S = identity shifted r;

%plan
z0=(0u,0u);
z1 = z0 transformed T;
z2 = z0 transformed S;
z3 = z0 transformed T transformed S;
draw z0--z2;
draw z2--z3;
pickup pencircle scaled 2pt;
draw z0--z1;
draw z1--z3;
pickup pencircle scaled 0.5pt;
label.urt(btex $\pi$ etex, z0+(0.1u,0u));

%droite dans le plan
z4 = (1u,.5u);
z5 = (4u,1u);
draw z4--z5;
label.top(btex $d'$ etex, z4);

%la droite en dehors du plan
z6 = (1u,2.5u);
z7 = z6 shifted z5-z4;
draw z6--z7;
label.top(btex $\Delta$ etex, z6);
endfig;


beginfig(30);
% parallelisme plan et droite
numeric u;
pair t,r;
transform T,S;

u= 1cm;
t=(4u,0u); r=(1u,2u);
T = identity shifted t;
S = identity shifted r;

%plan
z0=(0u,0u);
z1 = z0 transformed T;
z2 = z0 transformed S;
z3 = z0 transformed T transformed S;
draw z0--z2;
draw z2--z3;
pickup pencircle scaled 2pt;
draw z0--z1;
draw z1--z3;
pickup pencircle scaled 0.5pt;
label.urt(btex $\pi$ etex, z0+(0.1u,0u));

%la droite en dehors du plan
z4 = (1u,.5u);
z5 = (4u,1u);
z6 = (1u,2.5u);
z7 = z6 shifted z5-z4;
draw z6--z7;
label.top(btex $\Delta$ etex, z6);
endfig;

beginfig(31);
% parallelisme plan et droite
numeric u;
pair t,r;
transform T,S;

u= 1cm;
t=(4u,0u); r=(1u,2u);
T = identity shifted t;
S = identity shifted r;

%plan
z0=(0u,0u);
z1 = z0 transformed T;
z2 = z0 transformed S;
z3 = z0 transformed T transformed S;
draw z0--z2;
draw z2--z3;
pickup pencircle scaled 2pt;
draw z0--z1;
draw z1--z3;
pickup pencircle scaled 0.5pt;
label.urt(btex $\pi$ etex, z0+(0.1u,0u));

%droite dans le plan
z4 = (1u,.5u);
z5 = (4u,1u);
draw z4--z5;
label.top(btex $\Delta$ etex, z4);
endfig;


beginfig(32);
%representation de deux droites non parallelles et sans point commun
numeric u;
pair t,r;
transform T,S;

u= 1cm;
t=(4u,0u); r=(1u,2u);
T = identity shifted t;
S = identity shifted r;
path p[];

%tracé du plan
z0=(0u,0u);
z1 = z0 transformed T;
z2 = z0 transformed S;
z3 = z0 transformed T transformed S;
draw z0--z2;
draw z2--z3;
pickup pencircle scaled 2pt;
draw z0--z1;
draw z1--z3;
pickup pencircle scaled 0.5pt;
label.urt(btex $\pi$ etex, z0+(0.1u,0u));

%tracé de la droite
z4 = (0.5u,.5u);
z5 = (4u,1u);
%draw z4--z5;
%label.top(btex $\Delta$ etex, z5);

%tracé du point
z6 = (2u,1.5u);
z7 = (0.2u,1u);
dotlabel.rt(btex $A$ etex, z6);

%on met en place les pointillés
z9 = z6 shifted 2z7;
z10 = z6 shifted -3z7;
p1 = z6--z10;
p2 = z0--z1;
z11 = p1 intersectionpoint p2;
draw z6--z11 dashed evenly;
draw z11--z10;
draw z6--z9;

%le nom de la droite
label.rt(btex $\Delta$ etex, z10);
endfig;

beginfig(33);
% plans paralleles a l'aide de droites secantes
numeric u;
pair t,r;
transform T,S;

u= 1cm;
t=(4u,0u); r=(1u,2u);
T = identity shifted t;
S = identity shifted r;

%premier plan P
z0=(0u,0u);
z1 = z0 transformed T;
z2 = z0 transformed S;
z3 = z0 transformed T transformed S;
draw z0--z2;
draw z2--z3;
pickup pencircle scaled 2pt;
draw z0--z1;
draw z1--z3;
pickup pencircle scaled 0.5pt;
label.urt(btex $\pi$ etex, z0+(0.1u,0u));

%deuxieme plan Q
z10=(0u,-2.5u);
z11 = z10 transformed T;
z12 = z10 transformed S;
z13 = z10 transformed T transformed S;
draw z10--z12;
draw z12--z13;
pickup pencircle scaled 2pt;
draw z10--z11;
draw z11--z13;
pickup pencircle scaled 0.5pt;
label.urt(btex $\psi$ etex, z10+(0.1u,0u));

endfig;

end





