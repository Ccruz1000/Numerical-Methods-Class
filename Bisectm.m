fprintf('Be sure to mark all multiplication with a *\n\n\n');
  str=input('Give an equation in x with right hand side=0: ', 's');
%User types in their equation
  f=inline(str);
%Inputs string value from str to the function
    xl=input('Give a value of the lower bound for the guess interval: ');
    xh=input('Give a value of the upper bound for the guess interval: ');
while f(xl)*f(xh) > 0
  fprintf('Invalid Interval\n');
   xl=input('Give a value of the lower bound for the guess interval: ');
   xh=input('Give a value of the upper bound for the guess interval: ');
endwhile
if f(xl)==0
  fprintf('There is a root at the lower bound\n');
  return
elseif f(xh)==0
  fprintf('There is a root at the upper bound\n');
  return 
    endif
tol=input('What would you like your lowest error to be: ')
for i=1: 1000
  xm=(xl+xh)/2;
      if f(xl)*f(xm) < 0
          xh=xm;
      else
          xl=xm;
      endif
          if abs((xh-xl)/2) < tol
           break
          endif
endfor
fprintf('The root: %f\nThe number of iterations: %d\n',xl,i);
