function f =fig5(t,y,T,I)
format long
I=interp1(T,I,t);
 a1 = 1;
 a2 = 3;
 a3=2;
 a4=1;
 a5=50;
 a6=1;
 f(1)=a1*y(4)-a2*y(1);
 f(2)=a3*I*y(1)-a4*y(2);
 f(3)=a4*y(2)-a5*y(3)*y(4);
 f(4)=a6-a5*y(3)*y(4);
 f=f(:);