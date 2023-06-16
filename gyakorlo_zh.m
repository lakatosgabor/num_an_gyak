%% gauss elimináció
A = [2,-3,1,2; 
    0,-1,2,1;
    -1,3,0,1;
    0,-1,2,-1;] 

b = [4, 1, 4, 0]'; % ' jel a transzponálás,  oszlop vektor legyen. vagy ;-vel választom el az elemeket

tgauss(A,b)

%% két függvény metszéspontjának megkeresése fixpont iterációval

syms x;
f(x) = exp(x / (1 - sqrt(3) * x)) - x; % átalakított függvény f(x)=x alakra
g(x) = (x^4 - 3*x^3 + 2*x^-1) / (x^3 + 2*x^-1) - x; % átalakított függvény f(x)=x alakra

ax = gca();
ax.XAxisLocation = "origin";
ax.YAxisLocation = "origin";
ax.XLim = [-10, 10];
ax.YLim = [-6, 15];
ax.NextPlot = "add";

fplot(f)
fplot(g)

fixpont(f, 10^-4)

fixpont(g, 10^-4)

%% Lagrange interpoláció
% Vandermonde mátrix: az i. sor j. oszlopának eleme az i. hatványra emelt j. elem
x = [1;2;-1;0;3];
y = [-4;8;2;-4;86];
LagrIntV(x,y)

syms z;
fg(z) = -4-0*z+1*z^2-3*z^3+2*z^4;

x1 = -10:0.001:10;
y1 = fg(x1);

ax = gca();
ax.XAxisLocation = "origin";
ax.YAxisLocation = "origin";
ax.XLim = [-5, 5];
ax.YLim = [-2, 99];
ax.NextPlot = "add";

plot(x1, y1, x,y, '*') %  képet menteni kell jpg-be

%% a két görbe közötti terület meghatározása
syms x;
f(x) = log(x) + x + 3;
g(x) = 1 - sqrt(x) + x^2;

ax = gca();
ax.XAxisLocation = "origin";
ax.YAxisLocation = "origin";
ax.XLim = [-10, 10];
ax.YLim = [-10, 10];
ax.NextPlot = "add";

fplot(f)
fplot(g)

%a függvények metszéspontjainak meghatározása húr módszerrel és felező
%módszerrel
%intfel(f-g, 0, 5, 10^-4) %a második, harmadik paraméter, az az intervallum, ahol keressük a közelítő megoldást. a plotból kell lelesni
a = 2.71
%intfel(f-g, 0, 0.2, 10^-4)
b = 0.09

trapez(f-g, a, b)
simpson(f-g, a, b)

hur(g, 0, 5, 10^-4)
