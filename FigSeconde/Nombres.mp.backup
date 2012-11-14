
input /home/moi/Lycee/TS/figures/newcourbes/newcourbes; 

 input /home/moi/Lycee/TS/figures/couleur;

verbatimtex
%&latex
\documentclass[fourier]{polymaths}
\begin{document} 

etex




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% D I v           E U C               37 / 4





beginfig(1)
numeric u;
u:=1cm;
drawarrow (0,0)--(11u,0);
numeric h;
h:=0.2; path t;
t:= (u,-h*u)--(u,h*u);
draw t  withpen pencircle scaled 1.2bp;
draw t shifted (3u,0)withpen pencircle scaled 1.2bp;% withpen pencircle scaled 1.2bp;
draw t shifted (6u,0) withpen pencircle scaled 1.2bp;
draw (6u,-h*u)--(6u,2*h*u)withpen pencircle scaled 1.6bp withcolor 0.6white;
%draw t shifted (7.5u,0);

label.bot(btex $8\times 4$ etex, (u,-h*u)) withcolor bleu_f;
label.bot(btex $9\times 4$ etex, (4u,-h*u)) withcolor bleu_f;
label.bot(btex $10 \times 4$ etex, (7u,-h*u)) withcolor bleu_f;
label.top(btex $\Mathbold{37}$ etex, (6u,2*h*u)) withcolor 0.6white ;
%label.bot(btex $A_4$ etex, (8.5u,-h*u)) withcolor bleu_f;


drawdblarrow(4u,1.5*h*u)--(6u,1.5*h*u);
label.top(btex reste etex, (5u,1.5*h*u));

%drawdblarrow(5u,h*u)--(7u,h*u);
%label.top(btex $10$ etex, (6u,h*u));

%drawdblarrow(7u,h*u)--(8u,h*u);
%label.top(btex $1$ etex, (7.5u,h*u));

drawdblarrow(4u,1.2u)--(7u,1.2u) withcolor bleu_f;
label.top(btex $4$ etex, (5.5u,1.2*u)) withcolor bleu_f;

label.top(btex \Huge{\Flag} etex, (1.17u,0)) withcolor bleu_f;
label.top(btex \Huge{\Flag} etex, (4.17u,0)) withcolor bleu_f;
label.top(btex \Huge{\Flag} etex, (7.165u,0)) withcolor bleu_f;







endfig;






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% S P I R A L E

beginfig(2)

numeric u;
u:=1cm;

pair a[],o,s;

s:=(1,-1);
o:=origin;
a[0]:=(0,-u);
for i=0 upto 5 :
a[i+1]:=a[i] zscaled s;
endfor

draw o--a[0] dashed evenly;
for i=1 upto 6 :
draw o--a[i] dashed evenly;

draw a[i-1]--a[i] withcolor 0.6white withpen pencircle scaled 2bp;

draw symbole_ortho(o,a[i-1],a[i],0.25u);

draw_marks(o--a[i-1],i);
draw_marks(a[i-1]--a[i],i);

endfor

endfig;



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% aXE

beginfig(3)



repere(0,0,-5,7,-1,1,1cm,1cm);

%r_axes;

drawarrow r_p(-6.5,0)..r_p(6.5,0) ;
grad_x(1,1,red);
label.bot(btex 0 etex,r_p(0,-.2));
draw r_p(0,0.2)..r_p(0,-0.2);

%r_fin;

endfig;





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%                                                    I N T E R V A L L E S                 %
%%
%%%%%%

repere(0,0,-5,7,-1,1,.7cm,1cm);

pair A,B,C,D;
A:=r_p(-6.5,0); B:=r_p(2,0);  C:=r_p(-1,0); D:=r_p(5,0);




path d,g;

d:=(1mm,1.5mm)--(0,1.5mm)--(0,-1.5mm)--(1mm,-1.5mm);
g:=(-1mm,1.5mm)--(0,1.5mm)--(0,-1.5mm)--(-1mm,-1.5mm);




beginfig(400);
%r_axes;

drawarrow r_p(-6.5,0)..r_p(6.5,0) ;
grad_x(1,1,.5white);
label.bot(btex 0 etex,r_p(0,-.2));
draw r_p(0,0.2)..r_p(0,-0.2);

pickup pencircle scaled 2bp;

 label.top(btex $I=]-\infty\pv 2]$ etex, r_p(-3,1) ) withcolor white;
%draw  A--B withcolor red; draw g shifted B withcolor red;  label.top(btex $I=]-\infty\pv 2]$ etex, r_p(-3,1) ) withcolor red;

%draw C--D withcolor blue; draw g shifted C withcolor blue; draw d shifted D withcolor blue;label.top(btex $J=]-1\pv 5[$ etex, %r_p(3,1) ) withcolor blue;

%draw C--B withcolor green; draw g shifted C withcolor green; draw g shifted B withcolor green;label.top(btex $I\cap J=]-1\pv %2]$ etex, r_p(1,1) ) withcolor green;


%draw A--D withcolor bleu; draw d shifted D withcolor bleu; label.top(btex $I\cup J=]-\infty\pv 5[$ etex, r_p(0,1) ) withcolor %bleu;




%r_fin;

endfig;





beginfig(401)

path d,g;

d:=(1mm,1.5mm)--(0,1.5mm)--(0,-1.5mm)--(1mm,-1.5mm);
g:=(-1mm,1.5mm)--(0,1.5mm)--(0,-1.5mm)--(-1mm,-1.5mm);

%r_axes;

drawarrow r_p(-6.5,0)..r_p(6.5,0) ;
grad_x(1,1,.5white);
label.bot(btex 0 etex,r_p(0,-.2));
draw r_p(0,0.2)..r_p(0,-0.2);

pickup pencircle scaled 2bp;


draw  A--B withcolor red; draw g shifted B withcolor red;  label.top(btex $I=]-\infty\pv 2]$ etex, r_p(-3,1) ) withcolor red;

%draw C--D withcolor blue; draw g shifted C withcolor blue; draw d shifted D withcolor blue;label.top(btex $J=]-1\pv 5[$ etex, %r_p(3,1) ) withcolor blue;

%draw C--B withcolor green; draw g shifted C withcolor green; draw g shifted B withcolor green;label.top(btex $I\cap J=]-1\pv %2]$ etex, r_p(1,1) ) withcolor green;


%draw A--D withcolor bleu; draw d shifted D withcolor bleu; label.top(btex $I\cup J=]-\infty\pv 5[$ etex, r_p(0,1) ) withcolor %bleu;




%r_fin;

endfig;












beginfig(402)

path d,g;

d:=(1mm,1.5mm)--(0,1.5mm)--(0,-1.5mm)--(1mm,-1.5mm);
g:=(-1mm,1.5mm)--(0,1.5mm)--(0,-1.5mm)--(-1mm,-1.5mm);

%r_axes;

drawarrow r_p(-6.5,0)..r_p(6.5,0) ;
grad_x(1,1,.5white);
label.bot(btex 0 etex,r_p(0,-.2));
draw r_p(0,0.2)..r_p(0,-0.2);




%pickup pencircle scaled 2bp;

draw  A--B withcolor red withpen pencircle scaled 2bp ; draw g shifted B withcolor red  withpen pencircle scaled 2bp ;  label.top(btex $I=]-\infty\pv 2]$ etex, r_p(-3,1) ) withcolor red withpen pencircle scaled 2bp;


draw C--B withcolor blue;
pickup pencircle scaled 2bp;

draw B--D withcolor blue; draw g shifted C withcolor blue; draw d shifted D withcolor blue;label.top(btex $J=]-1\pv 5[$ etex, r_p(3,1) ) withcolor blue;

%draw C--B withcolor green; draw g shifted C withcolor green; draw g shifted B withcolor green;label.top(btex $I\cap J=]-1\pv %2]$ etex, r_p(1,1) ) withcolor green;


%draw A--D withcolor bleu; draw d shifted D withcolor bleu; label.top(btex $I\cup J=]-\infty\pv 5[$ etex, r_p(0,1) ) withcolor %bleu;




%r_fin;

endfig;










beginfig(403)

path d,g;

d:=(1mm,1.5mm)--(0,1.5mm)--(0,-1.5mm)--(1mm,-1.5mm);
g:=(-1mm,1.5mm)--(0,1.5mm)--(0,-1.5mm)--(-1mm,-1.5mm);

%r_axes;

drawarrow r_p(-6.5,0)..r_p(6.5,0) ;
grad_x(1,1,.5white);
label.bot(btex 0 etex,r_p(0,-.2));
draw r_p(0,0.2)..r_p(0,-0.2);

pickup pencircle scaled 2bp;


%draw  A--B withcolor red; draw g shifted B withcolor red;  
%label.top(btex $I=]-\infty\pv 2]$ etex, r_p(-3,1) ) withcolor red;

%draw C--D withcolor blue; draw g shifted C withcolor blue; draw d shifted D withcolor blue;
%label.top(btex $J=]-1\pv 5[$ etex, r_p(3,1) ) withcolor blue;

draw C--B withcolor green; draw g shifted C withcolor green; draw g shifted B withcolor green;label.top(btex $I\cap J=]-1\pv 2]$ etex, r_p(1,1) ) withcolor green;


%draw A--D withcolor bleu; draw d shifted D withcolor bleu; label.top(btex $I\cup J=]-\infty\pv 5[$ etex, r_p(0,1) ) withcolor %bleu;




%r_fin;

endfig;











beginfig(404)

path d,g;

d:=(1mm,1.5mm)--(0,1.5mm)--(0,-1.5mm)--(1mm,-1.5mm);
g:=(-1mm,1.5mm)--(0,1.5mm)--(0,-1.5mm)--(-1mm,-1.5mm);

%r_axes;

drawarrow r_p(-6.5,0)..r_p(6.5,0) ;
grad_x(1,1,.5white);
label.bot(btex 0 etex,r_p(0,-.2));
draw r_p(0,0.2)..r_p(0,-0.2);




%pickup pencircle scaled 2bp;

draw  A--B withcolor red withpen pencircle scaled 2bp; draw g shifted B withcolor red withpen pencircle scaled 2bp;  label.top(btex $I=]-\infty\pv 2]$ etex, r_p(-3,1) ) withcolor red withpen pencircle scaled 2bp;


draw C--B withcolor blue;
pickup pencircle scaled 2bp;

draw B--D withcolor blue; draw g shifted C withcolor blue; draw d shifted D withcolor blue;label.top(btex $J=]-1\pv 5[$ etex, r_p(3,1) ) withcolor blue;

%draw C--B withcolor green; draw g shifted C withcolor green; draw g shifted B withcolor green;label.top(btex $I\cap J=]-1\pv %2]$ etex, r_p(1,1) ) withcolor green;


%draw A--D withcolor bleu; draw d shifted D withcolor bleu; label.top(btex $I\cup J=]-\infty\pv 5[$ etex, r_p(0,1) ) withcolor %bleu;




%r_fin;

endfig;














beginfig(405)

path d,g;

d:=(1mm,1.5mm)--(0,1.5mm)--(0,-1.5mm)--(1mm,-1.5mm);
g:=(-1mm,1.5mm)--(0,1.5mm)--(0,-1.5mm)--(-1mm,-1.5mm);



%r_axes;

drawarrow r_p(-6.5,0)..r_p(6.5,0) ;
grad_x(1,1,.5white);
label.bot(btex 0 etex,r_p(0,-.2));
draw r_p(0,0.2)..r_p(0,-0.2);

pickup pencircle scaled 2bp;


%draw  A--B withcolor red; draw g shifted B withcolor red;  
%label.top(btex $I=]-\infty\pv 2]$ etex, r_p(-3,1) ) withcolor red;

%draw C--D withcolor blue; draw g shifted C withcolor blue; draw d shifted D withcolor blue;
%label.top(btex $J=]-1\pv 5[$ etex, r_p(3,1) ) withcolor blue;

%draw C--B withcolor green; draw g shifted C withcolor green; draw g shifted B withcolor green;label.top(btex $I\cap J=]-1\pv %2]$ etex, r_p(1,1) ) withcolor green;


draw A--D withcolor bleu; draw d shifted D withcolor bleu; label.top(btex $I\cup J=]-\infty\pv 5[$ etex, r_p(0,1) ) withcolor bleu;




%r_fin;

endfig;










beginfig(406)


pair A,B,C,D;
A:=r_p(-3,0); B:=r_p(3,0);  C:=r_p(-6.5,0); D:=r_p(1,0);





path d,g;

d:=(1mm,1.5mm)--(0,1.5mm)--(0,-1.5mm)--(1mm,-1.5mm);
g:=(-1mm,1.5mm)--(0,1.5mm)--(0,-1.5mm)--(-1mm,-1.5mm);



%r_axes;

drawarrow r_p(-6.5,0)..r_p(6.5,0) ;
grad_x(1,1,.5white);
label.bot(btex 0 etex,r_p(0,-.2));
draw r_p(0,0.2)..r_p(0,-0.2);

pickup pencircle scaled 2bp;


draw  A--B withcolor vert_e; draw g shifted B withcolor vert_e; draw g shifted A withcolor vert_e; 
label.top(btex $I=]-3\pv 3]$ etex, r_p(0,1) ) withcolor vert_e;

draw C--D withcolor red; draw g shifted D withcolor red;
label.top(btex $J=]-\infty\pv 1]$ etex, r_p(-3,1) ) withcolor red;

%draw C--B withcolor green; draw g shifted C withcolor green; draw g shifted B withcolor green;label.top(btex $I\cap J=]-1\pv %2]$ etex, r_p(1,1) ) %withcolor green;


draw A--D withcolor vert_e dashed withdots;
% draw d shifted D withcolor bleu; label.top(btex $I\cup J=]-\infty\pv 5[$ etex, r_p(0,1) ) withcolor bleu;




%r_fin;

endfig;









beginfig(407)


pair A,B,C,D;
A:=r_p(-1,0); B:=r_p(4,0);  C:=r_p(-3,0); D:=r_p(6.5,0);





path d,g;

d:=(1mm,1.5mm)--(0,1.5mm)--(0,-1.5mm)--(1mm,-1.5mm);
g:=(-1mm,1.5mm)--(0,1.5mm)--(0,-1.5mm)--(-1mm,-1.5mm);



%r_axes;

drawarrow r_p(-6.5,0)..r_p(6.5,0) ;
grad_x(1,1,.5white);
label.bot(btex 0 etex,r_p(0,-.2));
draw r_p(0,0.2)..r_p(0,-0.2);

pickup pencircle scaled 2bp;




draw C--D withcolor red; draw d shifted C withcolor red;
label.top(btex $J=[-3\pv +\infty[$ etex, r_p(4,1) ) withcolor red;

%draw C--B withcolor green; draw g shifted C withcolor green; draw g shifted B withcolor green;label.top(btex $I\cap J=]-1\pv %2]$ etex, r_p(1,1) ) %withcolor green;

draw  A--B withcolor vert_e dashed withdots; draw d shifted B withcolor vert_e; draw g shifted A withcolor vert_e; 
label.top(btex $I=]-1\pv 4[$ etex, r_p(1,1) ) withcolor vert_e;

%draw A--D withcolor vert_e dashed withdots;
% draw d shifted D withcolor bleu; label.top(btex $I\cup J=]-\infty\pv 5[$ etex, r_p(0,1) ) withcolor bleu;




%r_fin;

endfig;



beginfig(500);
path a,b,aa,ab;
a=fullcircle scaled 2cm;
b=a shifted (0,1cm);
aa=halfcircle scaled 2cm;
ab=buildcycle(aa,b);
picture pa,pb,px;
pa=thelabel(btex $A$ etex, (0,-.5cm));
pb=thelabel(btex $A\cap B$ etex, (0,0.5cm));
px=thelabel(btex $B$ etex, (0,1.5cm));

fill b withcolor white;
fill a withcolor bleu_ciel;
%fill b withcolor bleu;
%fill ab withcolor bleu_fonce;
unfill bbox pa;
draw pa;
%unfill bbox pb;
%draw pb;
%unfill bbox px;
%draw px;
endfig;











beginfig(501);
path a,b,aa,ab;
a=fullcircle scaled 2cm;
b=a shifted (0,1cm);
aa=halfcircle scaled 2cm;
ab=buildcycle(aa,b);
picture pa,pb,px;
pa=thelabel(btex $A$ etex, (0,-.5cm));
pb=thelabel(btex $A\cap B$ etex, (0,0.5cm));
px=thelabel(btex $B$ etex, (0,1.5cm));

fill a withcolor bleu_ciel;
fill b withcolor bleu;
fill ab withcolor bleu_f;
unfill bbox pa;
draw pa;
%unfill bbox pb;
%draw pb;
unfill bbox px;
draw px;
endfig;











beginfig(502);
path a,b,aa,ab;
a=fullcircle scaled 2cm;
b=a shifted (0,1cm);
aa=halfcircle scaled 2cm;
ab=buildcycle(aa,b);
picture pa,pb,px;
pa=thelabel(btex $A$ etex, (0,-.5cm));
pb=thelabel(btex $A\cap B$ etex, (0,0.5cm));
px=thelabel(btex $B$ etex, (0,1.5cm));

fill a withcolor bleu_ciel;
fill b withcolor bleu;
fill ab withcolor bleu_f;
unfill bbox pa;
draw pa;
unfill bbox pb;
draw pb;
unfill bbox px;
draw px;
endfig;





beginfig(503);
path a,b,aa,ab;
a=fullcircle scaled 2cm;
b=a shifted (0,1cm);
aa=halfcircle scaled 2cm;
ab=buildcycle(aa,b);
picture pa,pb,px,pu;
pa=thelabel(btex $A$ etex, (0,-.5cm));
pb=thelabel(btex $A\cap B$ etex, (0,0.5cm));
px=thelabel(btex $B$ etex, (0,1.5cm));
pu=thelabel(btex $A\cup B$ etex, (0,0.5cm));


fill a withcolor bleu_m;
fill b withcolor bleu_m;
fill ab withcolor bleu_m;
unfill bbox pu;
draw pu;
endfig;














end