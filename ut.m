function [ut] = ut(dx)
n=1/dx;
for i=1:n
for j=1:n
if i==1  
ut(i,j)=1;
else 
ut(i,j)=0;
endif
endfor
endfor
endfunction

ut(0.1)

x=ans;