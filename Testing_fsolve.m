function y = f(x)
  Cwc = x(1);
  N = x(2);
  ws = 1.5708;
  wp = 0.31416;
  As = 0.5;
  Ap = 45;
  y = [(wp/Cwc)^(2*N) - (1/10^(0.1*Ap))-1; (ws/Cwc)^(2*N) - (1/10^(0.1*As))-1];
endfunction

fsolve(@f, [1; 1])