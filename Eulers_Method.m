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
 n=1/h
 for i=1:n
   w=[w w(end)+h*f(t(end),w(end))];
   t=[t t(end)+h];
 endfor

fprintf('The points of derivation are: \n ')
w,t
