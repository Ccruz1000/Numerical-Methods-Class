 fprintf('Approximate a definite integral using the trapezoid method\n'); 
  str=input('Give an equation equation in x to integrate: ', 's');
%User types in their equation
  f=inline(str);
%Inputs string value from str to the function
%Give instructions of why we input 2 different values for n
 a=input('Give your lower bound of integration: ');
%give smaller bound
 b=input('Give your upper bound of integration: ');
%give larger bound
 n=input('How many divisions: ');
%input the number of rectangles
 h=(b-a)/n;
%the width for the rectangles
 s=0.5*(f(a)+f(b));
 for i=1:n-1
   s=s+f(a+i*h);
 endfor
I=h*s;
fprintf('The area under the curve is approximately ')
I
