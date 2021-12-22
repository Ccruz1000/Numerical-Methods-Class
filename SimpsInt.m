%Approximate an integral using Simpson's Rule
str=input('Give an equation equation in x to integrate: ', 's');
%User types in their equation
  f=inline(str);
%Inputs string value from str to the function
 a=input('Give your lower bound of integration: ');
%Input lower value
 b=input('Give your upper bound of integration: ');
 n=input('How many divisions: ');
%How many rectangles
 h=(b-a)/(2*n);
%Width of rectangles
 s1=0;
%Initialize a variable for the for loop
 s2=0;
%Initialize a variable for the second for loop 
for i=1:n
   x=a+h*(2*i-1);
   s1=s1+f(x);
%The second term of the equation for odd numbered intervals
endfor
for j=1:n-1
  x=a+h*2*j;
  s2=s2+f(x);
%The 3rd term of the equation for even numbered intervals
endfor
fprintf('The area under the curve is approximately ')
I=h*(f(a)+f(b)+4*s1+2*s2)/3
%The final answer
