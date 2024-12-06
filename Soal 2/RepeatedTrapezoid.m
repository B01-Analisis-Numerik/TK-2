function Int = RepeatedTrapezoid(f,a,b,n)
  h=(b-a)/(n-1);
  x=a:h:b;
  Int=0;
  for i=1:n-1
    Int=Int+(f(x(i))+f(x(i+1)))*(x(i+1)-x(i))/2;
  endfor
end
