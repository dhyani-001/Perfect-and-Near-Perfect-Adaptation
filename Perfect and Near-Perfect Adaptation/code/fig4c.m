function rk =fig4c(t,y,T,I)
format long
I=interp1(T,I,t);
 a1 = 1;
 a2 = 1;   
 rk(1)=a1*I*(1-(y(1))-(y(2)))-(a2*(y(1)));
 rk(2)=a2*y(1);
 rk=rk(:);
end

