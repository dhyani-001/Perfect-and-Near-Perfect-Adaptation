function f =fig3(t,y,T,I)
I=interp1(T,I,t);
 a1 = 10;
 a2 = 100;   
 a3=0.1;
 a4=1;
 k3=0.001;
 f(1)=a1*I*(1-y(1))-a2*y(1)*y(2);
 f(2)=(a3*I*(1-y(2))/(k3+1-y(2)))-a4*y(2);
 f=f(:);
end


