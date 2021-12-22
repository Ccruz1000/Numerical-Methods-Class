function [t, w] = RK4_multiple(f,to,yo,h,n)
  
  w=[yo];
  t=[to];

  for i = 1:n
    k1=f(t(i), w(i,:));
    k2=f(t(i)+h/2, w(i,:)+k1*h/2);
    k3=f(t(i)+h/2, w(i,:)+k2*h/2);
    k4=f(t(i)+h, w(i,:)+k3*h);
    w=[w ; w(i,:)+h/6*(k1+2*k2+2*k3+k4)];
    t=[t ; t(i)+h];
  endfor
  
endfunction