clc ; close all ; clear all ;
timerange=[0 50];
IC=[0;0];
T=xlsread('fig4c_input.xlsx','A2:A52');
I=xlsread('fig4c_input.xlsx','B2:B52');
[t,y]=ode45(@(t,y) fig4c(t,y,T,I),timerange,IC);
subplot(1,2,1);
plot(t,y(:,1));
ylabel('output');
xlabel('time');
clear;
%%%%%%%%%%%
timerange=[0 50];
IC=[0;0];
T=xlsread('fig4c_input.xlsx','A2:A52');
I=xlsread('fig4c_input.xlsx','C2:C52');
[t,y]=ode45(@(t,y) fig4c(t,y,T,I),timerange,IC);
subplot(1,2,2);
plot(t,y(:,1));
ylabel('output');
xlabel('time');
clear;
%%%%%%%%%%%
%jacobian
syms x y;
var = [x, y];
a1 = 1;
a2 = 1;   
f1=a1*5*(1-(x)-(y))-(a2*(x));
f2=a2*x;
f = [f1 f2];
[sol1, sol2] = vpasolve(f);

J = jacobian([f1, f2], var);

for k=1:length(sol1)
    x= sol1(k)
    y = sol2(k);
    A = subs(J);
    [eigvec, eigval] = eig(A);
end
disp(eigvec)
disp(eigval);

clear

syms x y;
var = [x, y];
a1 = 1;
a2 = 1;   
f1=a1*10*(1- x - y)-(a2*x);
f2=a2*x;
f = [f1 f2];
[sol1, sol2] = vpasolve(f);

J = jacobian([f1, f2], var);

for k=1:length(sol1)
    x= sol1(k)
    y = sol2(k);
    A = subs(J);
    [eigvec, eigval] = eig(A);
end
disp(eigvec);
disp(eigval);
clear
