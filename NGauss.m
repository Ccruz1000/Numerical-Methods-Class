fprintf('This will be used to solve Ax=b using Naive Gauss Elimination\n');
fprintf('with partial pivoting\n'); 
A=input('Please enter your A matrix like so [A11 A12; A21 A22]: ')
b=input('Please enter your b vector like so [b11 b22] ');
b=b'
C=[A b];
[n, n2]=size(C);
  for i=1:n-1
    for j=i+1:n
      if abs(C(j,i))>abs(C(i,i))
        T=C(j,:);
        C(j,:)=C(i,:)
        C(i,:)=T;
      endif
    endfor
  endfor
fprintf('Matrix after pivoting \n');
C 
for k=1:n-1;
    for i=k+1:n
      m=C(i,k)/C(k,k);
        for j=k:n+1;
          C(i,j)=C(i,j)-m*C(k,j);
        endfor
    endfor
endfor
if C(n,n)==0
  fprintf('There is no unique solution to this system of equations\n');
  return;
endif
printf('The coefficient matrix becomes \n');
C
printf('The solution to the system of equation becomes\n');
x=A\b;
x

