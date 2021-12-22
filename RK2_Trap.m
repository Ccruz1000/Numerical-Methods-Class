 fprintf('Points given ODE \n'); 
  str=input('Give an equation in t and w to solve: ', 's');
%User types in their equation
  f=inline(str);
%Inputs string value from str to the function
%Give instructions of why we input 2 different values for n
 t0=input('Initial t: ');
t=[t0]
 %give smaller bound
 y0=input('Initial w: ');
w=[y0]
 %give step value
 h=input('Step value h: ');
b=input('Interval b: ');
 n=(b-t)/h
 for i=1:n
  k1=f(t(end),w(end));
    k2=f(t(end)+h,w(end)+k1*h);
    w=[w w(end)+h/2*(k1+k2)];
    t=[t t(end)+h];
 endfor

fprintf('The points of derivation are: \n ')
w,t