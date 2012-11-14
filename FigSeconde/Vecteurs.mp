
input geometriesyr16;

 
verbatimtex
%&latex
\documentclass[fourier]{polymaths}
\begin{document} 

etex





%beginfig(1)

figure(-2cm,-1cm,20cm,5cm);
  pair a[],u,v;path p;
  a[1]:=origin;
  u:=(2cm,0); v:=(0.5cm,1cm);
  a[2]:=a[1] shifted u;
  a[3]:=a[2] shifted u;
  a[4]:=a[1] shifted v;
  a[5]:=a[2] shifted v;
  a[6]:=a[3] shifted v;
  a[7]:=a[4] shifted v;
  a[8]:=a[5] shifted v;
  a[9]:=a[6] shifted v;
 
 p:=polygone(a[1],a[2],a[5],a[4]);
 trace p;
 trace p shifted u;
 trace p shifted v;
 trace p shifted (u+v);

 drawarrow a[1]--a[2] withpen pencircle scaled 1.6bp withcolor 0.7white;

 drawarrow a[4]--a[5] withpen pencircle scaled 1.6bp;
 
 drawarrow a[8]--a[9] withpen pencircle scaled 1.6bp;

 label.bot(btex A etex,a[1]);
  label.bot(btex B etex,a[2]);
 label.bot(btex C etex,a[3]);
 label.lrt(btex D etex,a[4]);
 label.lrt(btex E etex,a[5]);
 label.lrt(btex F etex,a[6]);
 label.top(btex G etex,a[7]);
  label.top(btex H etex,a[8]);
 label.top(btex I etex,a[9]);
 label.top(btex $\ve{d}$ etex,.5(a[1]+a[2])) withcolor 0.6white;
label.top(btex $\ve{d}$ etex,.5(a[4]+a[5])) ;
 label.top(btex $\ve{d}$ etex,.5(a[8]+a[9])) ;

 
 


fin; 
%endfig;



%beginfig(2);

  figure(-10cm,-5cm,12cm,10cm); 

%egalité de deux vecteurs et parallelogramme 
numeric u; 
pair t; 
u = 1cm; 
t=(1u,2u); 
transform T; 
T= identity shifted t; 
z0 = (0,0);z1 = z0 transformed T; 
z2=(3u,-1u);z3=z2 transformed T ; 
drawarrow z0--z1 withcolor 0.5white withpen pencircle scaled 1.6bp; 
drawarrow z2--z3 withcolor 0.5white withpen pencircle scaled 1.6bp; 
draw z0--z2 dashed evenly; 
draw z1--z3 dashed evenly; 
label.lft(btex $A$ etex, z0); 
label.top(btex $B$ etex, z1); 
label.lrt(btex $C$ etex, z2); 
label.rt(btex $D$ etex, z3); 
label.lft(btex $\ve{u}$ etex, .5(z0+z1));
label.rt(btex $\ve{u}$ etex, .5(z2+z3));

endfig; 



%beginfig(3);
figure(-10cm,-5cm,12cm,10cm); 
%addition de deux vecteurs(Chasles 1) 
numeric u; 
pair t,r,g,d; 
u=1cm; 
t=(2u,1u); 
r=(3u,-2u);
g:=(-2u,u);
d:=(3u,2u);
transform T,R,G,D; 
T= identity shifted t; 
R= identity shifted r;
D= identity shifted d;
G= identity shifted g;

z0=(0,0);z1= z0 transformed T; 
z2=z1 transformed R;

drawarrow z0--z1 withcolor 0.6white; 
drawarrow z1--z2 withcolor 0.6white; 


drawarrow z0--z2 withcolor 0.4white withpen pencircle scaled 1.6bp; 
label.lft(btex $A$ etex, z0); 
label.rt(btex $B$ etex, z1); 
label.rt(btex $C$ etex, z2); 
label.top(btex $\ve{u}$ etex, 0.5[z0,z1]); 
label.top(btex $\ve{v}$ etex, 0.5[z1,z2]); 

label.bot(btex $\ve{u}+\ve{v}$ etex, 0.5[z0,z2]) withcolor 0.4white withpen pencircle scaled 1.6bp; 
endfig;





%beginfig(4); 

figure(-10cm,-5cm,12cm,10cm); 

%addition de deux vecteurs(Chasles) 
numeric u; 
pair t,r,g,d; 
u=1cm; 
t=(2u,1u); 
r=(3u,-2u);
g:=(-2u,u);
d:=(3u,2u);
transform T,R,G,D; 
T= identity shifted t; 
R= identity shifted r;
D= identity shifted d;
G= identity shifted g;

z0=(0,0);z1= z0 transformed T; 
z2=z1 transformed R;
z0g=z0 transformed G;
z1g=z1 transformed G;
z1d=z1 transformed D;
z2d=z2 transformed D;
drawarrow z0--z1 withcolor 0.6white; 
drawarrow z1--z2 withcolor 0.6white; 
drawarrow z0g--z1g withcolor 0.6white; 
drawarrow z1d--z2d withcolor 0.6white; 
draw z0--z0g dashed evenly;
draw z1--z1g dashed evenly;
draw z1--z1d dashed evenly;
draw z2--z2d dashed evenly;

drawarrow z0--z2 withcolor 0.4white withpen pencircle scaled 1.6bp; 
label.lft(btex $A$ etex, z0); 
label.rt(btex $B$ etex, z1); 
label.rt(btex $C$ etex, z2); 
label.top(btex $\ve{u}$ etex, 0.5[z0,z1]); 
label.top(btex $\ve{v}$ etex, 0.5[z1,z2]); 
label.top(btex $\ve{u}$ etex, 0.5[z0g,z1g]); 
label.top(btex $\ve{v}$ etex, 0.5[z1d,z2d]); 

label.bot(btex $\ve{u}+\ve{v}$ etex, 0.5[z0,z2]) withcolor 0.4white withpen pencircle scaled 1.6bp; 
endfig;



%beginfig(5);

figure(-10cm,-5cm,12cm,10cm); 

%figure(-5cm,-5cm,12cm,5cm); 

  
%addition de deux vecteurs(parallelogramme) 
numeric u; 
pair t,r,s; 
u=1cm; 
t=(2u,1u); 
r=(-2u,3u); 
transform T,R; 
T= identity shifted t; 
R= identity shifted r; 
z0=(0,0);z1= z0 transformed T; 
z2=z0 transformed R;z3=z1+z2;
drawarrow z0--z1 withcolor 0.6white; 
drawarrow z0--z2 withcolor 0.6white; 
drawarrow z0--z3 withcolor 0.4white withpen pencircle scaled 1.8bp; 
label.bot(btex $A$ etex, z0); 
label.rt(btex $B$ etex, z1); 
label.top(btex $D$ etex, z2); 
label.top(btex $C$ etex, z3); 
label.bot(btex $\ve{u}$ etex, 0.5[z0,z1]); 
label.bot(btex $\ve{v}$ etex, 0.5[z0,z2]); 
label.lft(btex $\ve{u}+\ve{v}$ etex, 0.7[z0,z3]);

draw z2--z3 dashed evenly;
draw z1--z3 dashed evenly;
endfig; 






%beginfig(6)

figure(-10cm,-5cm,12cm,10cm); 


  drawarrow origin--(5cm,1cm);
  label.bot(btex $\ve{u}$ etex, (2.5cm,.5cm));
  drawarrow (5cm,2cm)--(0,1cm) withcolor 0.4white withpen pencircle scaled 1.8bp;
  label.top(btex $-\ve{u}$ etex, (2.5cm,1.5cm)) withcolor 0.4white withpen pencircle scaled 1.8bp;
endfig;




%beginfig(7); 

figure(-10cm,-5cm,12cm,10cm); 


numeric u,a,b; 
%multiples d'un vecteur 
pair t; 
u = 1cm; 
t=(1u,2u); 
transform T,R,S; 
T = identity shifted t; 
R = identity shifted 2t; 
S = identity shifted -1.5t; 
z0 = (0,0); z1= z0 transformed T; 
z2 = (-2.5u,0); z3 = z2 transformed R; 
z4 = (3u,3u); z5 = z4 transformed S; 
drawarrow z0--z1  withcolor 0.4white withpen pencircle scaled 1.8bp; 
drawarrow z2--z3 ; 
drawarrow z4--z5 ; 
label.rt(btex $\ve{u}$ etex, 0.5[z0,z1]) withcolor 0.4white withpen pencircle scaled 1.8bp; 
label.rt(btex $k\ve{u} \, (k>0)$ etex, 0.5[z2,z3]); 
label.rt(btex $k\ve{u} \, (k<0)$ etex, 0.5[z4,z5]); 
endfig; 
  







%beginfig(8); 
%colinearite de deux vecteurs et directions paralleles 


figure(-10cm,-5cm,12cm,10cm); 

numeric u; 
pair t,r; 
u=1cm; 
t=(2u,3u); 
r=(-1u,-1.5u); 
transform T,R; 
T= identity shifted t; 
R= identity shifted r; 
z0=(0,0);z1= z0 transformed T; 
z2=(2u,2u);z3=z2 transformed R; 
drawarrow z0--z1; 
drawarrow z2--z3; 
label.lft(btex $A$ etex, z0); 
label.rt(btex $B$ etex, z1); 
label.rt(btex $D$ etex, z2); 
label.rt(btex $C$ etex, z3); 
label.top(btex $\ve{u}$ etex, 0.5[z0,z1]); 
label.bot(btex $\ve{v}$ etex, 0.5[z2,z3]); 
endfig; 










%beginfig(9); 
%coordonnées d'un vecteur 

figure(-10cm,-5cm,12cm,10cm); 

numeric u; 
pair i,j; 
u=0.7cm; 
 
i=(2u,0u); 
j=(0.2u,1u); 
transform T,R; 
T= identity shifted i; 
R= identity shifted j; 
z0=(0,0); 
z33= z0 shifted 4i;z4= z0 shifted -i; 
z5= z0 shifted 4j; z6= z0 shifted -j; 
 
draw z4--z33 withcolor blue; draw z6--z5 withcolor blue; 
z7= z0 shifted i;z8 = z0 shifted j; 
label.bot(btex $\ve{v}$ etex, 0.5[z0,z7]); 
label.lft(btex $\ve{v}$ etex, 0.5[z0,z8]); 
drawarrow z0--z7; 
drawarrow z0--z8; 
 
z1=(4u,1u); 
z2=z1 shifted 1.5i; 
z3=z2 shifted 2j; 
drawarrow z1--z2 dashed evenly withcolor green; 
drawarrow z2--z3 dashed evenly withcolor green; 
drawarrow z1--z3 withcolor red; 
label.llft(btex $O$ etex, z0); 
label.bot(btex $x\ve{u}$ etex, 0.5[z1,z2]); 
label.rt(btex $y\ve{v}$ etex, 0.5[z2,z3]); 
label.top(btex $\ve{t}$ etex, 0.5[z1,z3]);

z9=z0 shifted 1.5i; 
z10=z0 shifted 2j; 
z11= z0 shifted 1.5i+2j; 
draw z9--z11 dashed evenly withcolor green; 
draw z10--z11 dashed evenly withcolor green; 
drawarrow z0--z11 withcolor red; 
label.top(btex $M(x;y)$ etex, z11); 
label.top(btex $\ve{t}$ etex, 0.5z11);
endfig; 








































%beginfig(10)  % parallélogramme


figure(-10cm,-5cm,12cm,10cm); 

  pair a,b,c,d,o;
  numeric u;
  path p;
  u:=1cm;
  a:=origin;
  b:=(4u,0);
  d:=(u,3u);
  c:=b+d;
  o:=.5c;
  p:=a--b--c--d--cycle;
  fill p withcolor .9white;
  trace p withpen pencircle scaled 1.8bp withcolor .4white;
  trace codesegments(a,o,o,c,2);
  trace codesegments(b,o,o,d,4);
  trace a--c;
  trace b--d;
  label.bot(btex A etex,a);
  label.bot(btex B etex,b);
   label.top(btex C etex,c);
   label.top(btex D etex,d);
   label.lft(btex O etex,o);
endfig;











%beginfig(11)% Exercice para similitude

figure(-10cm,-5cm,12cm,10cm);

  pair a,b,c,d,o,m,n,p,q;
  numeric u;
  path pp,r;
  u:=1cm;
  a:=origin;
  b:=(4u,0);
  d:=(u,3u);
  c:=b+d;
  o:=.5c;
  q=1.5[d,a];
  p=1.5[c,d];
  n=1.5[b,c];
  m=1.5[a,b];
  pp:=a--b--c--d--cycle;
  r:=m--n--p--q--cycle;
  fill r withcolor .9white;
  fill pp withcolor .8white;


  
  trace pp withpen pencircle scaled 1.8bp withcolor .4white;
  trace r withpen pencircle scaled 1.8bp withcolor .6white;
  trace codesegments(a,o,o,c,2);
  trace codesegments(b,o,o,d,4);
  trace Codelongueur(a,.5[a,b],.5[a,b],b,b,m,1);
  trace Codelongueur(b,.5[b,c],.5[b,c],c,c,n,5);
   trace Codelongueur(c,.5[c,d],.5[c,d],d,d,p,1);
    trace Codelongueur(d,.5[d,a],.5[d,a],a,a,q,5);

  
  trace a--c;
  trace b--d;
  trace b--m;
  trace c--n;
  trace d--p;
  trace a--q;
 
  label.bot(btex A etex,a);
  label.bot(btex B etex,b);
   label.top(btex C etex,c);
   label.top(btex D etex,d);
   label.lft(btex O etex,o);
   label.bot(btex Q etex,q);
  label.bot(btex M etex,m);
   label.top(btex N etex,n);
   label.top(btex P etex,p);
   dotlabel.bot(btex  etex,.5[a,b]);
   dotlabel.bot(btex  etex,.5[b,c]);
   dotlabel.bot(btex  etex,.5[c,d]);
   dotlabel.bot(btex  etex,.5[d,a]);
endfig;




%beginfig(12)  % parallélogramme

figure(-10cm,-5cm,12cm,10cm); 

  pair a,b,c,d,o;
  numeric u;
  path p;
  u:=1cm;
  a:=origin;
  b:=(4u,0);
  d:=(u,3u);
  c:=b+d;
  %o:=.5c;
  p:=a--b--c--d--cycle;
  fill p withcolor .9white;
  trace p withpen pencircle scaled 1.8bp withcolor .4white;
  %trace codesegments(a,o,o,c,2);
  %trace codesegments(b,o,o,d,4);
  %trace a--c;
  %trace b--d;
  label.bot(btex A etex,a);
  label.bot(btex B etex,b);
   label.top(btex C etex,c);
   label.top(btex D etex,d);
  % label.lft(btex O etex,o);
endfig;



%beginfig(13)  % parallélogramme main levée

figure(-10cm,-5cm,12cm,10cm); 

%figuremainlevee(-4cm,-5cm,12cm,5cm)

  pair a,b,c,d,i,e,f;
  numeric u;
  path p;
  u:=1cm;
  a:=origin;
  b:=(4u,0);
  d:=(u,3u);
  c:=b+d;
  i:=.5[a,b];
  e:=(2/3)[d,i];
  f:=.5[d,e];
 
  p:=a--b--c--d--cycle;
  fill p withcolor .9white;
   trace d--i;
  trace a--c;
  trace p withpen pencircle scaled 1.8bp withcolor .4white;
  %trace codesegments(a,o,o,c,2);
  trace Codelongueur(d,f,f,e,e,i,2);
  %trace a--c;
  %trace b--d;
  label.bot(btex A etex,a);
  label.bot(btex B etex,b);
   label.top(btex C etex,c);
   label.top(btex D etex,d);
   label.bot(btex I etex,i);
   label.lft(btex E etex,e);
   dotlabel.rt(btex  etex,f);
%finmainlevee;
endfig;







%beginfig(14)
%figure(-2cm,-2cm,7cm,7cm);

figure(-10cm,-5cm,12cm,10cm); 

  pair a,b,c,i,o,p,d;
  path t;
  t:=triangleqcq(b,a,c);
  i:=.5[a,c];
  o:=(-1cm,-4cm);
  2[b,i]=1[b,d];
  p-o=a+c-2b;
  trace t withpen pencircle scaled 1.8bp withcolor .4white;
  fill t withcolor .8white;
  trace codesegments(b,i,i,d,2);
  drawarrow o--p withpen pencircle scaled 1.6bp withcolor blue;
  drawarrow b--d withpen pencircle scaled 1.6bp withcolor blue;
  drawarrow d--p dashed evenly;
  drawarrow b--o dashed evenly;
  dotlabel.bot(btex O etex,o);
  dotlabel.bot(btex P etex,p);
  dotlabel.top(btex D etex,d);
  label.bot(btex A etex,a);
  label.bot(btex B etex,b);
  label.top(btex C etex,c);
  dotlabel.ulft(btex I etex,i);
  
endfig;





%beginfig(15)
figure(0cm,0cm,10cm,7cm)
numeric u;
u:=1cm;
  
  trace papierpointe;
  dotlabel.llft(btex A etex,(2u,2u));
  dotlabel.lrt(btex B etex,(6u,3u));
  dotlabel.llft(btex C etex,(3u,5u));
endfig;









%beginfig(16)  % parallélogramme encore

figure(-10cm,-5cm,12cm,10cm); 

  pair a,b,c,d,e,f;
  numeric u;
  path p;
  u:=1cm;
  a:=origin;
  b:=(4u,0);
  d:=(u,3u);
  c:=b+d;
  e:=.5[b,c];
  f:=.5[d,c];
  p:=a--b--c--d--cycle;
  fill p withcolor .9white;
  trace p withpen pencircle scaled 1.8bp withcolor .4white;
  trace codesegments(b,e,e,c,2);
  trace codesegments(d,f,f,c,4);
  %trace a--c;
  %trace b--d;
  label.bot(btex A etex,a);
  label.bot(btex B etex,b);
   label.top(btex C etex,c);
   label.top(btex D etex,d);
    dotlabel.rt(btex E etex,e);
   dotlabel.top(btex F etex,f);
  % label.lft(btex O etex,o);
endfig;












%beginfig(17)  % triangle 

figure(-10cm,-5cm,12cm,10cm); 

pair a,b,c,m[],n[],p[];
path t;

t:= triangleqcq(a,b,c);
trace t withpen pencircle scaled 1.8bp withcolor .4white ;
fill t withcolor .9white;


m[1]:=(1/3)[a,b];
m[2]:=(2/3)[a,b];
p[1]:=(1/3)[b,c];
p[2]:=(2/3)[b,c];
p[3]:=(4/3)[b,c];
n[1]:=(1/3)[c,a];
n[2]:=(2/3)[c,a];

trace p[3]--n[1]--m[1] dashed evenly;

trace c--p[3];


dotlabel.bot(btex M etex,m[1]);
dotlabel.bot(btex  etex,m[2]);
dotlabel.rt(btex  etex,p[1]);
dotlabel.rt(btex  etex,p[2]);
dotlabel.lft(btex N etex,n[1]);
dotlabel.lft(btex  etex,n[2]);
dotlabel.lft(btex P etex,p[3]);
label.bot(btex A etex,a);
label.bot(btex B etex,b);
label.top(btex C etex,c);
trace Codelongueur(a,m[1],m[1],m[2],m[2],b,2);
trace Codelongueur(b,p[1],p[1],p[2],p[2],c,c,p[3],4);
trace Codelongueur(c,n[1],n[1],n[2],n[2],a,3);

endfig;




%beginfig(18)  % triangle main levée 

figure(-10cm,-5cm,12cm,10cm); 


pair a,b,c,m[],n[],p[];
path t;

t:= triangleqcq(a,b,c);
trace t withpen pencircle scaled 1.8bp withcolor .4white;
fill t withcolor .9white;


m[1]:=(1/4)[a,b];
m[2]:=(2/4)[a,b];
m[3]:=(3/4)[a,b];
p[1]:=(1/6)[b,c];
p[2]:=(2/6)[b,c];
p[3]:=(3/6)[b,c];
p[4]:=(4/6)[b,c];
p[5]:=(5/6)[b,c];
n[1]:=(1/3)[c,a];
n[2]:=(2/3)[c,a];
n[3]:=(4/3)[c,a];

trace n[3]--m[1]--p[3];

trace a--n[3];


dotlabel.bot(btex P etex,m[1]);
dotlabel.bot(btex  etex,m[2]);
dotlabel.bot(btex  etex,m[3]);
dotlabel.rt(btex  etex,p[1]);
dotlabel.rt(btex  etex,p[2]);
dotlabel.urt(btex Q etex,p[3]);
dotlabel.rt(btex  etex,p[4]);
dotlabel.rt(btex  etex,p[5]);
dotlabel.lft(btex  etex,n[1]);
dotlabel.lft(btex  etex,n[2]);
dotlabel.lft(btex R etex,n[3]);
dotlabel.ulft(btex A etex,a);
dotlabel.bot(btex B etex,b);
dotlabel.top(btex C etex,c);
trace Codelongueur(a,m[1],m[1],m[2],m[2],m[3],m[3],b,2);
trace Codelongueur(b,p[1],p[1],p[2],p[2],p[3],p[3],p[4],p[4],p[5],p[5],c,4);
trace Codelongueur(c,n[1],n[1],n[2],n[2],a,a,n[3],3);

fin;







beginfig(19); 
%coordonnees d'un vecteur AB 
numeric u; 
pair i,j; 
u=0.7cm; 
 
i=(2u,0u); 
j=(0.2u,1u); 
transform T,R; 
T= identity shifted i; 
R= identity shifted j; 
z0=(0,0); 
z4= z0 shifted 4i;z5= z0 shifted -i; 
z6= z0 shifted 4j; z7= z0 shifted -j; 
 
draw z5--z4 withcolor blue; draw z7--z6 withcolor blue; 
 
z8= z0 shifted i;z9 = z0 shifted j; 
 
label.lrt(btex $\ve{i}$ etex, 0.8[z0,z8]); 
label.lft(btex $\ve{j}$ etex, 0.5[z0,z9]); 
drawarrow z0--z8 withpen pencircle scaled 1.2bp; 
drawarrow z0--z9 withpen pencircle scaled 1.2bp; 
 
z1=z0 shifted 0.5i+1.5j; 
z2=z1 shifted 2i; 
z3=z2 shifted 2j; 
 
drawarrow z1--z2 withcolor red; 
drawarrow z2--z3 withcolor green; 
drawarrow z1--z3 withcolor blue; 
 
label.llft(btex $O$ etex, z0); 
label.top(btex $A$ etex, z1); 
label.top(btex $B$ etex, z3); 
label.bot(btex $(x_{B}-x_{A})\ve{i}$ etex, 0.5[z1,z2]); 
label.rt(btex $(y_{B}-y_{A})\ve{j}$ etex, 0.5[z2,z3]); 
 
z10=z1 shifted -1.5j; z11= z10 shifted z2-z1; z12= z1 shifted -0.5i; 
z13= z12 shifted z3-z2; 
 
draw z1--z10 dashed evenly; 
draw z2--z11 dashed evenly; 
draw z1--z12 dashed evenly; 
draw z3--z13 dashed evenly; 
 
label.bot(btex $x_{A}$ etex, z10); 
label.bot(btex $x_{B}$ etex, z11); 
label.lft(btex $y_{A}$ etex, z12); 
label.lft(btex $y_{B}$ etex, z13); 
endfig; 
 


















beginfig(20); 
%coordonnees d'un vecteur AB 
numeric u; 
pair i,j; 
u=.5cm; 
 
i=(2u,0u); 
j=(0,2u); 
transform T,R; 
T= identity shifted i; 
R= identity shifted j; 
z0=(0,0); 
z4= z0 shifted 8i;z5= z0 shifted -i; 
z6= z0 shifted 4j; z7= z0 shifted -j; 
 
draw z5--z4 withcolor blue; draw z7--z6 withcolor blue; 
 
z8= z0 shifted i;z9 = z0 shifted j; 
 
label.lrt(btex $\ve{i}$ etex, 0.8[z0,z8]); 
label.lft(btex $\ve{j}$ etex, 0.5[z0,z9]); 
drawarrow z0--z8 withpen pencircle scaled 1.5bp; 
drawarrow z0--z9 withpen pencircle scaled 1.5bp; 
 
z1=z0 shifted 0.5i+1.5j; 
z2=z1 shifted 5i; 
z3=z2 shifted 2j; 
 
drawarrow z1--z2 withcolor red; 
drawarrow z2--z3 withcolor green; 
drawarrow z1--z3 withcolor blue; 
 
label.llft(btex $O$ etex, z0); 
label.top(btex $A$ etex, z1); 
label.top(btex $B$ etex, z3); 
label.bot(btex $(x_{B}-x_{A})\ve{i}$ etex, 0.5[z1,z2]); 
label.rt(btex $(y_{B}-y_{A})\ve{j}$ etex, 0.5[z2,z3]); 
 
z10=z1 shifted -1.5j; z11= z10 shifted z2-z1; z12= z1 shifted -0.5i; 
z13= z12 shifted z3-z2; 
 
draw z1--z10 dashed evenly; 
draw z2--z11 dashed evenly; 
draw z1--z12 dashed evenly; 
draw z3--z13 dashed evenly; 
 
label.bot(btex $x_{A}$ etex, z10); 
label.bot(btex $x_{B}$ etex, z11); 
label.lft(btex $y_{A}$ etex, z12); 
label.lft(btex $y_{B}$ etex, z13);

trace codeperp(z10,z0,z12,5);
trace codeperp(z1,z2,z3,5);



endfig; 
 





































beginfig(900); 
%coordonnées d'un vecteur 

%figure(-10cm,-5cm,12cm,10cm); 

numeric u; 
pair i,j; 
u=0.7cm; 
 
i=(2u,0u); 
j=(0.2u,1u); 
transform T,R; 
T= identity shifted i; 
R= identity shifted j; 
z0=(0,0); 
z33= z0 shifted 4i;z4= z0 shifted -i; 
z5= z0 shifted 4j; z6= z0 shifted -j; 
 
draw z4--z33 withcolor blue; draw z6--z5 withcolor blue; 
z7= z0 shifted i;z8 = z0 shifted j; 
label.bot(btex $\ve{i}$ etex, 0.5[z0,z7]); 
label.lft(btex $\ve{j}$ etex, 0.5[z0,z8]); 
drawarrow z0--z7; 
drawarrow z0--z8; 
 
z1=(4u,1u); 
z2=z1 shifted 1.5i; 
z3=z2 shifted 2j; 
drawarrow z1--z2 dashed evenly withcolor green; 
drawarrow z2--z3 dashed evenly withcolor 0.4white; 
drawarrow z1--z3 withcolor red; 
label.llft(btex $O$ etex, z0); 
label.bot(btex \textcolor{green}{$x\ve{i}$} etex, 0.5[z1,z2]); 
label.rt(btex \textcolor{gray}{$y\ve{j}$} etex, 0.5[z2,z3]); 
label.top(btex $\ve{t}$ etex, 0.5[z1,z3]);

%z9=z0 shifted 1.5i; 
%z10=z0 shifted 2j; 
%z11= z0 shifted 1.5i+2j; 
%draw z9--z11 dashed evenly withcolor green; 
%draw z10--z11 dashed evenly withcolor green; 
%drawarrow z0--z11 withcolor red; 
%dotlabel.top(btex $M(x;y)$ etex, z11); 
%label.top(btex $\ve{t}$ etex, 0.5z11);
endfig; 









beginfig(901); 
%coordonnées d'un vecteur 

%figure(-10cm,-5cm,12cm,10cm); 

numeric u; 
pair i,j; 
u=0.7cm; 
 
i=(2u,0u); 
j=(0.2u,1u); 
transform T,R; 
T= identity shifted i; 
R= identity shifted j; 
z0=(0,0); 
z33= z0 shifted 4i;z4= z0 shifted -i; 
z5= z0 shifted 4j; z6= z0 shifted -j; 
 
draw z4--z33 withcolor blue; draw z6--z5 withcolor blue; 
z7= z0 shifted i;z8 = z0 shifted j; 
label.bot(btex $\ve{i}$ etex, 0.5[z0,z7]); 
label.lft(btex $\ve{j}$ etex, 0.5[z0,z8]); 
drawarrow z0--z7; 
drawarrow z0--z8; 
 
%z1=(4u,1u); 
%z2=z1 shifted 1.5i; 
%z3=z2 shifted 2j; 
%drawarrow z1--z2 dashed evenly withcolor green; 
%drawarrow z2--z3 dashed evenly withcolor green; 
%drawarrow z1--z3 withcolor red; 
%label.llft(btex $O$ etex, z0); 
%label.bot(btex $x\ve{u}$ etex, 0.5[z1,z2]); 
%label.rt(btex $y\ve{v}$ etex, 0.5[z2,z3]); 
%label.top(btex $\ve{t}$ etex, 0.5[z1,z3]);

z9=z0 shifted 1.5i; 
z10=z0 shifted 2j; 
z11= z0 shifted 1.5i+2j; 
%draw z9--z11 dashed evenly withcolor green; 
%draw z10--z11 dashed evenly withcolor green; 
%drawarrow z0--z11 withcolor red; 
dotlabel.top(btex $M(x;y)$ etex, z11); 
%label.top(btex $\ve{t}$ etex, 0.5z11);
endfig; 




beginfig(902); 
%coordonnées d'un vecteur 

%figure(-10cm,-5cm,12cm,10cm); 

numeric u; 
pair i,j; 
u=0.7cm; 
 
i=(2u,0u); 
j=(0.2u,1u); 
transform T,R; 
T= identity shifted i; 
R= identity shifted j; 
z0=(0,0); 
z33= z0 shifted 4i;z4= z0 shifted -i; 
z5= z0 shifted 4j; z6= z0 shifted -j; 
 
draw z4--z33 withcolor blue; draw z6--z5 withcolor blue; 
z7= z0 shifted i;z8 = z0 shifted j; 
label.bot(btex $\ve{i}$ etex, 0.5[z0,z7]); 
label.lft(btex $\ve{j}$ etex, 0.5[z0,z8]); 
drawarrow z0--z7; 
drawarrow z0--z8; 
 
%z1=(4u,1u); 
%z2=z1 shifted 1.5i; 
%z3=z2 shifted 2j; 
%drawarrow z1--z2 dashed evenly withcolor green; 
%drawarrow z2--z3 dashed evenly withcolor green; 
%drawarrow z1--z3 withcolor red; 
%label.llft(btex $O$ etex, z0); 
%label.bot(btex $x\ve{u}$ etex, 0.5[z1,z2]); 
%label.rt(btex $y\ve{v}$ etex, 0.5[z2,z3]); 
%label.top(btex $\ve{t}$ etex, 0.5[z1,z3]);

z9=z0 shifted 1.5i; 
z10=z0 shifted 2j; 
z11= z0 shifted 1.5i+2j; 
%draw z9--z11 dashed evenly withcolor green; 
%draw z10--z11 dashed evenly withcolor green; 
drawarrow z0--z11 withcolor red; 
dotlabel.top(btex $M(x;y)$ etex, z11); 
label.top(btex $\ve{OM}$ etex, 0.5z11);
endfig; 



beginfig(903); 
%coordonnées d'un vecteur 

%figure(-10cm,-5cm,12cm,10cm); 

numeric u; 
pair i,j; 
u=0.7cm; 
 
i=(2u,0u); 
j=(0.2u,1u); 
transform T,R; 
T= identity shifted i; 
R= identity shifted j; 
z0=(0,0); 
z33= z0 shifted 4i;z4= z0 shifted -i; 
z5= z0 shifted 4j; z6= z0 shifted -j; 
 
draw z4--z33 withcolor blue; draw z6--z5 withcolor blue; 
z7= z0 shifted i;z8 = z0 shifted j; 
label.bot(btex $\ve{i}$ etex, 0.5[z0,z7]); 
label.lft(btex $\ve{j}$ etex, 0.5[z0,z8]); 
drawarrow z0--z7; 
drawarrow z0--z8; 
 
%z1=(4u,1u); 
%z2=z1 shifted 1.5i; 
%z3=z2 shifted 2j; 
%drawarrow z1--z2 dashed evenly withcolor green; 
%drawarrow z2--z3 dashed evenly withcolor green; 
%drawarrow z1--z3 withcolor red; 
%label.llft(btex $O$ etex, z0); 
%label.bot(btex $x\ve{u}$ etex, 0.5[z1,z2]); 
%label.rt(btex $y\ve{v}$ etex, 0.5[z2,z3]); 
%label.top(btex $\ve{t}$ etex, 0.5[z1,z3]);

z9=z0 shifted 1.5i; 
z10=z0 shifted 2j; 
z11= z0 shifted 1.5i+2j; 
draw z9--z11 dashed evenly withcolor green; 
%draw z10--z11 dashed evenly withcolor green; 
drawarrow z0--z11 withcolor red; 
dotlabel.top(btex $M(x;y)$ etex, z11); 
label.top(btex $\ve{OM}$ etex, 0.5z11);
endfig; 





beginfig(904); 
%coordonnées d'un vecteur 

%figure(-10cm,-5cm,12cm,10cm); 

numeric u; 
pair i,j; 
u=0.7cm; 
 
i=(2u,0u); 
j=(0.2u,1u); 
transform T,R; 
T= identity shifted i; 
R= identity shifted j; 
z0=(0,0); 
z33= z0 shifted 4i;z4= z0 shifted -i; 
z5= z0 shifted 4j; z6= z0 shifted -j; 
 
draw z4--z33 withcolor blue; draw z6--z5 withcolor blue; 
z7= z0 shifted i;z8 = z0 shifted j; 
label.bot(btex $\ve{i}$ etex, 0.5[z0,z7]); 
label.lft(btex $\ve{j}$ etex, 0.5[z0,z8]); 
drawarrow z0--z7; 
drawarrow z0--z8; 
 
%z1=(4u,1u); 
%z2=z1 shifted 1.5i; 
%z3=z2 shifted 2j; 
%drawarrow z1--z2 dashed evenly withcolor green; 
%drawarrow z2--z3 dashed evenly withcolor green; 
%drawarrow z1--z3 withcolor red; 
%label.llft(btex $O$ etex, z0); 
%label.bot(btex $x\ve{u}$ etex, 0.5[z1,z2]); 
%label.rt(btex $y\ve{v}$ etex, 0.5[z2,z3]); 
%label.top(btex $\ve{t}$ etex, 0.5[z1,z3]);

z9=z0 shifted 1.5i; 
z10=z0 shifted 2j; 
z11= z0 shifted 1.5i+2j; 
draw z9--z11 dashed evenly withcolor green; 
%draw z10--z11 dashed evenly withcolor green; 
drawarrow z0--z11 withcolor red; 
dotlabel.top(btex $M(x;y)$ etex, z11); 
label.top(btex $\ve{OM}$ etex, 0.5z11);
label.bot(btex \textcolor{green}{$x\ve{i}$} etex,z9 );

endfig; 








beginfig(905); 
%coordonnées d'un vecteur 

%figure(-10cm,-5cm,12cm,10cm); 

numeric u; 
pair i,j; 
u=0.7cm; 
 
i=(2u,0u); 
j=(0.2u,1u); 
transform T,R; 
T= identity shifted i; 
R= identity shifted j; 
z0=(0,0); 
z33= z0 shifted 4i;z4= z0 shifted -i; 
z5= z0 shifted 4j; z6= z0 shifted -j; 
 
draw z4--z33 withcolor blue; draw z6--z5 withcolor blue; 
z7= z0 shifted i;z8 = z0 shifted j; 
label.bot(btex $\ve{i}$ etex, 0.5[z0,z7]); 
label.lft(btex $\ve{j}$ etex, 0.5[z0,z8]); 
drawarrow z0--z7; 
drawarrow z0--z8; 
 
%z1=(4u,1u); 
%z2=z1 shifted 1.5i; 
%z3=z2 shifted 2j; 
%drawarrow z1--z2 dashed evenly withcolor green; 
%drawarrow z2--z3 dashed evenly withcolor green; 
%drawarrow z1--z3 withcolor red; 
%label.llft(btex $O$ etex, z0); 
%label.bot(btex $x\ve{u}$ etex, 0.5[z1,z2]); 
%label.rt(btex $y\ve{v}$ etex, 0.5[z2,z3]); 
%label.top(btex $\ve{t}$ etex, 0.5[z1,z3]);

z9=z0 shifted 1.5i; 
z10=z0 shifted 2j; 
z11= z0 shifted 1.5i+2j; 
draw z9--z11 dashed evenly withcolor green; 
draw z10--z11 dashed evenly withcolor 0.4white; 
drawarrow z0--z11 withcolor red; 
dotlabel.top(btex $M(x;y)$ etex, z11); 
label.top(btex $\ve{OM}$ etex, 0.5z11);
label.bot(btex \textcolor{green}{$x\ve{i}$} etex,z9 );

endfig; 

















beginfig(906); 
%coordonnées d'un vecteur 

%figure(-10cm,-5cm,12cm,10cm); 

numeric u; 
pair i,j; 
u=0.7cm; 
 
i=(2u,0u); 
j=(0.2u,1u); 
transform T,R; 
T= identity shifted i; 
R= identity shifted j; 
z0=(0,0); 
z33= z0 shifted 4i;z4= z0 shifted -i; 
z5= z0 shifted 4j; z6= z0 shifted -j; 
 
draw z4--z33 withcolor blue; draw z6--z5 withcolor blue; 
z7= z0 shifted i;z8 = z0 shifted j; 
label.bot(btex $\ve{i}$ etex, 0.5[z0,z7]); 
label.lft(btex $\ve{j}$ etex, 0.5[z0,z8]); 
drawarrow z0--z7; 
drawarrow z0--z8; 
 
%z1=(4u,1u); 
%z2=z1 shifted 1.5i; 
%z3=z2 shifted 2j; 
%drawarrow z1--z2 dashed evenly withcolor green; 
%drawarrow z2--z3 dashed evenly withcolor green; 
%drawarrow z1--z3 withcolor red; 
%label.llft(btex $O$ etex, z0); 
%label.bot(btex $x\ve{u}$ etex, 0.5[z1,z2]); 
%label.rt(btex $y\ve{v}$ etex, 0.5[z2,z3]); 
%label.top(btex $\ve{t}$ etex, 0.5[z1,z3]);

z9=z0 shifted 1.5i; 
z10=z0 shifted 2j; 
z11= z0 shifted 1.5i+2j; 
draw z9--z11 dashed evenly withcolor green; 
draw z10--z11 dashed evenly withcolor 0.4white; 
drawarrow z0--z11 withcolor red; 
dotlabel.top(btex $M(x;y)$ etex, z11); 
label.top(btex $\ve{OM}$ etex, 0.5z11);
label.bot(btex \textcolor{green}{$x\ve{i}$} etex,z9 );
label.lft(btex \textcolor{gray}{$y\ve{j}$} etex,z10 );

endfig; 




end