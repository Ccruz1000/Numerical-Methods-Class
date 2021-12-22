function y=f(x)
  delta=x(1);
  sigma=x(2);
  Cnbeta=-0.1;
  Cndeltar=-0.08;
  Cybeta=-0.6;
  Cydeltar=0.15;
  Cdy=0.6;
  Cno=0;
  Cyo=0;
  U=42.148; %Approach Speed
  Vw=15.41; %Wind Speed
  Ss=34; %Projected Side Area
  dc=1.8; %Aircraft Center Position (Distance in X from CG)
  b=8; %Wingspan
  S=32; %Wing Area
  rho=1.225; %Air Density
  Beta=atan(Vw/U); %Angle between aircraft nose and wind direction
  Vt=sqrt(U^2+Vw^2); %Total velocity
  Fw=(1/2)*rho*Vw^2*Ss*Cdy; %Wind force
  
  y=[((1/2)*rho*Vt^2*S*b*(Cno+Cnbeta*(Beta-sigma)+Cndeltar*delta)+Fw*dc*cos(sigma)); ((1/2)*rho*Vw^2*Ss*Cdy-(1/2)*rho*Vt^2*S*(Cyo+Cybeta*(Beta-sigma)+Cydeltar*delta))];
  
endfunction
fsolve(@f, [1;1])