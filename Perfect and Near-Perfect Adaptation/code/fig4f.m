function f =fig4f(t,y,T,I)
I=interp1(T,I,t);
 a1=4;
 a2=4;  
 f(1)=((a1*(I-y(1)-y(2))*(1-y(1)-y(2)))-a2*y(1));
 f(2)=(a2*y(1));
 f=f(:);
end
