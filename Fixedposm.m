fprintf('Be sure to mark all multiplication with a *\n\n\n');
  str=input('Give an equation in x with right hand side=0: ', 's');
%User types in their equation
  f=inline(str);
%Inputs string value from str to the function
tol=input('Enter the required tolerance: ');
xi=input('Enter your initial guess: ');
iter=input('How many total iterations would you like to perform? ');
if f(xi)== 0
  fprintf('This number is already a root\n');
endif
for i=1:iter
  x=f(xi);
  relerr=abs((x-xi)/x);
    if (relerr<tol)
      break;
    endif;
  xi=x;
endfor
if(i==iter)
fprintf('The algorithm did not converge\n');
elseif 
fprintf('The algorithm converged after ');
i
fprintf(' iterations\n');
fprintf(' The algorithm converged at ');
x
endif




