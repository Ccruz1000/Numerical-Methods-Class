function [utplusdt] = utplusdt(ut,dt) 
n=rows(ut);
for a=2:(n-1)
for b=2:(n-1)
if a==1
utplusdt(a,b)=1;
elseif (b==1||rows(ut) && a!=1) 
utplusdt(a,b)=0;
else
utplusdt(a,b)=ut(a,b)+(dt*(ut((a-1),b)-2*ut(a,b)+ut((a+1),b)+ut(a,(b-1))-2*ut(a,b)+ut(a,(b+1))))/((1/n)*(1/n));
endif
endfor
endfor
endfunction

utplusdt(x,0.1)
