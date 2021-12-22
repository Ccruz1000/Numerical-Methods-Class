function [t, w] = RK2_multiple(f, to, yo ,h, n)
  
  w=[yo];
  t=[to];

  for i = 1:n
    k1=f(t(i), w(i,:));
    k2=f(t(i)+h, w(i,:)+k1*h);
    w=[w ; w(i,:)+h/2*(k1+k2)];
    t=[t ; t(i)+h];
  endfor
  
endfunction
%[t w]=RK2_multiple(@f, 0, [1 0], 0.1, 1)
%function z=f(t,y)
%z(1)=y(1)+y(2);
%z(2)=-y(1)+y(2);