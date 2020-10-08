clc ; close all ; clear all ;
timerange=[0 50];
IC=[0;0];
T=xlsread('fig4f_input.xlsx','A2:A52');
I=xlsread('fig4f_input.xlsx','B2:B52');
[t,y]=ode45(@(t,y) fig4f(t,y,T,I),timerange,IC);
subplot(1,2,1);
plot(t,y(:,1));
ylabel('output');
xlabel('time');
%hold on;
clear all ;
%%%%%%%%%%%%%%%
timerange=[0 50];
IC=[0;0];
T=xlsread('fig4f_input.xlsx','A2:A52');
I=xlsread('fig4f_input.xlsx','C2:C52');
[t,y]=ode45(@(t,y) fig4f(t,y,T,I),timerange,IC);
subplot(1,2,2);
plot(t,y(:,1));
ylabel('output');
xlabel('time');
%hold on;
clear all ;

%%%%%%%%%%%%%%

%%%%%%%%%
clear all;
syms x y;
var = [x, y];
a1=4;
a2=4;  
f1=((a1*(0.4-x-y)*(1-x-y))-a2*x);
f2=(a2*x);
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
clear all ;
syms x y;
var = [x, y];
a1=4;
a2=4;  
f1=((a1*(0.8-x-y)*(1-x-y))-a2*x);
f2=(a2*x);
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
clear all ;
syms x y;
var = [x, y];
a1=4;
a2=4;  
f1=((a1*(1.2-x-y)*(1-x-y))-a2*x);
f2=(a2*x);
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
clear all ;
syms x y;
var = [x, y];
a1=4;
a2=4;  
f1=((a1*(1.6-x-y)*(1-x-y))-a2*x);
f2=(a2*x);
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
clear;
