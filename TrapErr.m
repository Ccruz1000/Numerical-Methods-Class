fprintf('Approximate a definite integral using the trapezoid method\n');
fprintf('The error is calculated using Richardsons error formula\n'); 
str=input('Give an equation equation in x to integrate: ', 's');
%User types in their equation
f=inline(str);
%Inputs string value from str to the function
 a=input('Give your lower bound of integration: ');
%give smaller bound
 b=input('Give your upper bound of integration: ');
%give larger bound
fprintf('In order to calculate the error, choose at least 2 divisions\n')
n=input('How many divisions: ');
%input the number of rectangles
%the following part is to calculate the error
%We will create an initial estimation of the integral, and use it
%in Richardson's formula to calculate the error
n2=round(n/2);
h=(b-a)/n;
h2=(b-a)/n2;
%the width for the rectangles
s=0.5*(f(a)+f(b));
s2=0.5*(f(a)+f(b));
 for i=1:n-1
   s=s+f(a+i*h);
 endfor
 for j=1:n2-1
   s2=s2+f(a+j*h2);
 endfor
I=h*s;
I2=h2*s2;
fprintf('The area under the curve is approximately ')
I
fprintf('\nThe error is approximately ')
Err=abs((I-I2)/((h2/h)^2-1))