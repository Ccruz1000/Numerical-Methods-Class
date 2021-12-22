fprintf('Approximate a definite integral using the Simpsons method\n');
fprintf('The error is calculated using Richardsons error formula\n'); %Approximate an integral using Simpson's Rule
  str=input('Give an equation equation in x to integrate: ', 's');
%User types in their equation
  f=inline(str);
%Inputs string value from str to the function
  a=input('Give your lower bound of integration: ');
%Input lower value
  b=input('Give your upper bound of integration: ');
  n=input('How many divisions: ');
%How many rectangles
%the following part is to calculate the error
%We will create an initial estimation of the integral, and use it
%in Richardson's formula to calculate the error
  n2=round(n/2);
  h=(b-a)/(2*n);
  h2=(b-a)/(2*n2);
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
%Above the larger value for the integral was calculated (I(h2))
%Now we will calculate I(h1)
  s3=0;
  s4=0;
%Initalize 2 new variables for the for loop
for i=1:n2
  x=a+h2*(2*i-1);
  s3=s3+f(x);
endfor
for j=1:n-1
  x=a+h2*2*j;
  s4=s4+f(x);
endfor
fprintf('The area under the curve is approximately ')
  I=h*(f(a)+f(b)+4*s1+2*s2)/3
  I2=h2*(f(a)+f(b)+4*s3+2*s4)/3;
%Calculated to determine the error
  Err=abs((I-I2)/((h2/h^4)-1));
%Richardsons formula
fprintf('While the error is approximately ');
  Err
%The final answer