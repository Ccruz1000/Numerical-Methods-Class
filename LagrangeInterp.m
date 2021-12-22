x=input('Enter x data points in square brackets: ');
y=input('Enter y data points in square brackets: ');

while length(x) ~= length(y);
  fprintf('Enter the same number of data points for x and y\n');
  x=input('Enter x data points in square brackets: ');
  y=input('Enter y data points in square brackets: ');
endwhile
n=length(x)-1;


xp=input('Enter the x point you would like to interpolate: ');

sm=0;
for i=1:n+1
  pr=1;
    for j=1:n+1
      if j~=i
        pr=pr*(xp-x(j))/(x(i)-x(j));
      endif
    endfor
  sm=sm+y(i)*pr;
endfor
yp=sm
