    fprintf('Be sure to mark all multiplication with a *\n\n\n');
  str=input('Give an equation in x with right hand side=0: ', 's');
    %User types in their equation
  f=inline(str);
    %Converts from string to function 
  xl=input('Choose the lower bound for the guess interval: ');
  xh=input('Choose the upper bound for the guess interval: ');
    %Input the upper and lower bounds to initial guess
 while(f(xl)*f(xh)) > 0 
    fprintf('There is no root in this interval\n')
    %Prompt user the interval is incorrect
  xl=input('Choose the lower bound for the guess interval: ');
  xh=input('Choose the upper bound for the guess interval: ');
    %Input a new upper and lower bound for the initial guess
 endwhile
 if f(xl) == 0 
    fprintf('There is a root at the lower bound\n')
     %Inform the user their lower bound is located on a root
 elseif f(xh) == 0 
    fprintf('There is a root at the upper bound\n')
     %Inform the user their upper bound is located on a root
 endif
  tol=input('What would you like your lowest error to be: ');
     %User inputs their desired error value
 for i=1:1000 %Limit total iterations to 1000
   xm=((xl*f(xh)-xh*f(xl))/(f(xh)-f(xl))); %Define center value based on method
      if f(xl)*f(xm) < 0 
          xh=xm;
      elseif f(xl)*f(xm) > 0
          xl=xm;
      endif
     %Check which half the root is located in
 if abs((xh-xl)/2) < tol;
   break;
 endif
     %Stop loop once error is acceptable
 endfor
fprintf('The root: %f\nThe number of iterations: %d\n',xm,i);
     %Display the root and number of iterations