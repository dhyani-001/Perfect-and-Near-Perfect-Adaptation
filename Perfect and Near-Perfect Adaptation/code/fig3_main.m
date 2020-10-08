clc ; close all ; clear all ;
timerange=[0 50];
IC=[0.02;0.02];
T=xlsread('fig3_input.xlsx','A2:A52');
I=xlsread('fig3_input.xlsx','B2:B52');
[t,y]=ode45(@(t,y) fig3(t,y,T,I),timerange,IC);
figure
subplot(1,2,1);
plot(t,y(:,1));
ylabel('output');
xlabel('time');

subplot(1,2,2);
plot(t,y(:,2));
ylabel('neg.leg');
xlabel('time');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
timerange=[0 50];
IC=[0.04;0.04];
T=xlsread('fig3_input.xlsx','A2:A52');
I=xlsread('fig3_input.xlsx','C2:C52');
[t,y]=ode45(@(t,y) fig3(t,y,T,I),timerange,IC);
figure
subplot(1,2,1);
plot(t,y(:,1));
ylabel('output');
xlabel('time');

subplot(1,2,2);
plot(t,y(:,2));
ylabel('neg.leg');
xlabel('time');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms x y;
var = [x, y];
a1 = 10;
a2 = 100;   
a3=0.1;
a4=1;
k3=0.001;
f1=a1*0.2*(1-x)-a2*x*y;
f2=(a3*0.2*(1-y)/(k3+1-y))-a4*y;

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
clear
syms x y;
var = [x, y];
a1 = 10;
a2 = 100;   
a3=0.1;
a4=1;
k3=0.001;
f1=a1*0.4*(1-x)-a2*x*y;
f2=(a3*0.4*(1-y)/(k3+1-y))-a4*y;

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
clear
syms x y;
var = [x, y];
a1 = 10;
a2 = 100;   
a3=0.1;
a4=1;
k3=0.001;
f1=a1*0.6*(1-x)-a2*x*y;
f2=(a3*0.6*(1-y)/(k3+1-y))-a4*y;

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